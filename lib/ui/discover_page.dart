import 'dart:convert';
import 'package:bookfinder/ui/books.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String noImage =
    "https://images.pexels.com/photos/1765033/pexels-photo-1765033.jpeg?auto=compress&cs=tinysrgb&w=600";

class GBook {
  late String title;
  late String author;
  late String description;
  late String thumbnailLink;
  // String accessUrl;

  GBook(this.title, this.author, this.description, this.thumbnailLink);

  GBook.fromJson(Map<String, dynamic> json) {
    title = json['item']['volumeInfo']['title'] ??
        "No title available"; // parsing the responseData as argument to the book
    author = json['item']['volumeInfo']['authors'] ?? "No author information";
    description =
        json['item']['volumeInfo']['description'] ?? "No Description avalable";
    thumbnailLink =
        json['item']['volumeInfo']['imageLinks']['thumbnail'] ?? noImage;
  }
}

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});
  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  TextEditingController searchTermController = TextEditingController();

  final String apiKey = "AIzaSyAxrpyHDxfg2aJs8xcxK207e7Uy9XbQnDY";
  String errorMessage = "";

  List<GBook> finalBooks = [];

  List<GBook> myBooks = [];

  Future<List<GBook>> searchBooks(String searchTerm) async {
    var url =
        "https://www.googleapis.com/books/v1/volumes?q=${searchTermController.text}";

    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      dynamic searchResult = jsonDecode(response.body);
      debugPrint(response.body); //11
      for (var book in searchResult) {
        //11
        myBooks.add(GBook.fromJson(book)); //11
        debugPrint("Got some response! Adding...");
      }
      debugPrint("Done parsing and returned as below");
      // return myBooks;
      // return searchResult.map((e) => GBook.fromJson(e)).toList(); // 22

      // setState(() {
      //   myBooks = responseToString(searchResult['items']);
      // });
    } else {
      debugPrint("Couldn't find any book!");
    }
    setState(() {
      debugPrint("inside initState");
      finalBooks = myBooks;
      debugPrint("Got ${finalBooks.length} books");
    });
    debugPrint("reurning...");
    return myBooks;
  }

/*
  List<GBook> responseToString(List<dynamic> searchResult) {
    List<GBook> parsedBooks = [];
    for (var book in searchResult) {
      debugPrint("About parsing them to GoogleBooks and myBooks");

      parsedBooks.add(GBook(
        book['item']['volumeInfo']
            ['title'], // parsing the responseData as argument to the book
        book['item']['volumeInfo']['authors'][0],
        book['item']['volumeInfo']['description'] ?? "No Description avalable",
        book['item']['volumeInfo']['imageLinks']['thumbnail'],
      ));

      // ##
      var volumeInfo = book['volumeInfo'];
      String title = volumeInfo['title'] ?? "No title";
      String author = (volumeInfo['authors'] as List<dynamic>).isNotEmpty
          ? volumeInfo['authors'][0]
          : "Unknown Author";
      String description =
          volumeInfo['description'] ?? "No Description available";
      String thumbnailLink =
          volumeInfo['imageLinks']['thumbnail'] ?? "No Thumbnail";

      parsedBooks.add(GBook(
        title,
        author,
        description,
        thumbnailLink,
      ));
      debugPrint("Done parsing and returned as below");
    }
    return parsedBooks;
  }
  */

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // No Appbar
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Discover in Finder",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16)),
                            prefixIcon: const Icon(Icons.search),
                            hintText: "Search by title, author or category",
                            suffixIcon: IconButton(
                                onPressed: () {
                                  searchTermController.clear();
                                },
                                icon: const Icon(Icons.clear)),
                          ),
                          controller: searchTermController,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                          onPressed: () {
                            searchBooks(searchTermController.text);
                          },
                          child: const Text("Search")),
                    ),
                  ],
                ), // Search Field Row Ends

                // Search Categories
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Search by Category",
                    style: TextStyle(fontSize: 16),
                  ),
                ),

                // #Search categories
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      searchCategory("Business"),
                      searchCategory("Technology"),
                      searchCategory("Science"),
                      searchCategory("Engineering"),
                      searchCategory("History"),
                      searchCategory("Health"),
                      searchCategory("Computer Science"),
                      searchCategory("Mathematics"),
                    ],
                  ),
                ),
                /*
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: ListView.builder(
                        itemCount: finalBooks.length,
                        itemBuilder: ((BuildContext context, int index) {
                          // final book = myBooks[index];
                          debugPrint("ListTile now and again");
                          // debugPrint(finalBooks[index].thumbnailLink);
                          // debugPrint(finalBooks[index].title);
                          // debugPrint(finalBooks[index].author);
                          return Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.rectangle,
                            ),
                            height: 200,
                            child: ListTile(
                              leading: Image.network(
                                  finalBooks[index].thumbnailLink),
                              title: Text(finalBooks[index].title),
                              subtitle: Text(finalBooks[index].author),
                              onTap: () {},
                            ),
                          );
                        })),
                  ),
                ),
                */

                Center(
                  child: Text(
                    errorMessage,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),

                // Others
                /*
                const Text("Others", style: TextStyle(fontSize: 18)),
                
                Expanded(
                  child: ListView.builder(
                      itemCount: recommendedBooks.length,
                      itemBuilder: ((context, index) {
                        // final book = myBooks[index];
                        return Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                          ),
                          child: ListTile(
                            leading: Image.network(
                                recommendedBooks[index].bookCover),
                            title: Text(recommendedBooks[index].bookTitle),
                            subtitle: Text(recommendedBooks[index].author),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert_outlined),
                            ),
                            onTap: () {},
                          ),
                        );
                      })),
                ),
                */

                Container(
                  color: Colors.grey[200],
                  width: double.infinity,
                  padding: const EdgeInsets.only(bottom: 15.0, top: 20),
                  child: const Center(child: Text("...End...")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Body Ends
  // Other functions below
  Widget searchCategory(String category) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
          // color: Colors.blue,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.blue),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
              child:
                  Text(category, style: const TextStyle(color: Colors.white)),
              onPressed: () {
                setState(() {
                  searchTermController.text = category;
                });
              },
            ),
          )),
    );
  }
}

// in use
// Widget searchCategory(String category) {
//   return Padding(
//     padding: const EdgeInsets.all(8),
//     child: Container(
//         // color: Colors.blue,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(10), color: Colors.blue),
//         child: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: TextButton(
//             child: Text(category, style: const TextStyle(color: Colors.white)),
//             onPressed: () {

//             },
//           ),
//         )),
//   );
// }

// Not in use
List categories = [
  "Business",
  "History",
  "Science",
  "Computer Science",
  "Technology",
  "Health",
  "Arts",
  "Social Science",
  "Mathematics",
  "Politcal Science"
];
List<Widget> catergoriesSection(List categories) {
  List<Widget> categoriesList = [];
  for (int item in categories) {
    categoriesList.add(Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          color: Colors.blue,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Text(
            "${categories[item]}",
            style: const TextStyle(color: Colors.white),
          )),
    ));
  }
  return categoriesList;
}
