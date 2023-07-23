import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GoogleBook {
  String title;
  String author;
  String description;
  String thumbnailLink;

  GoogleBook(this.title, this.author, this.description, this.thumbnailLink);
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

  List<GoogleBook> finalBooks = [];

  List<GoogleBook> myBooks = [];

  Future<List> searchBooks(String searchTerm) async {
    var url =
        "https://www.googleapis.com/books/v1/volumes?q=${searchTermController.text}";

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final searchResult = jsonDecode(response.body);
      debugPrint(response.body);
      // myBooks = searchResult['items'].fromM
      // debugPrint(response as String?);
      setState(() {
        debugPrint("Got some response!");
        // debugPrint(finalBooks as String?);
        myBooks = responseToString(searchResult['items']);
      });
    } else {
      debugPrint("Couldn't find any book!");
      setState(() {
        errorMessage = "Couldn't find any book!";
      });
    }
    debugPrint("Done parsing and returned as below");
    return myBooks;
  }

  List<GoogleBook> responseToString(List<dynamic> searchResult) {
    List<GoogleBook> parsedBooks = [];
    for (var book in searchResult) {
      debugPrint("About parsing them to GoogleBooks and myBooks");

      // parsedBooks.add(GoogleBook(
      //   book['item']['volumeInfo']
      //       ['title'], // parsing the responseData as argument to the book
      //   book['item']['volumeInfo']['authors'][0],
      //   book['item']['volumeInfo']['description'] ?? "No Description avalable",
      //   book['item']['volumeInfo']['imageLinks']['thumbnail'],
      // ));
      var volumeInfo = book['volumeInfo'];
      String title = volumeInfo['title'] ?? "No title";
      String author = (volumeInfo['authors'] as List<dynamic>).isNotEmpty
          ? volumeInfo['authors'][0]
          : "Unknown Author";
      String description =
          volumeInfo['description'] ?? "No Description available";
      String thumbnailLink =
          volumeInfo['imageLinks']['thumbnail'] ?? "No Thumbnail";

      parsedBooks.add(GoogleBook(
        title,
        author,
        description,
        thumbnailLink,
      ));
      debugPrint("Done parsing and returned as below");
    }
    return parsedBooks;
  }

  @override
  void initState() {
    super.initState();
    finalBooks = myBooks;
    debugPrint("inside initState");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // No Appbar
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            height: 1000,
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
                  padding: EdgeInsets.all(8.0),
                  child: Text("Search by Category"),
                ),
                SingleChildScrollView(
                  // Search categories
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
                Expanded(
                  child: ListView.builder(
                      itemCount: myBooks.length,
                      itemBuilder: ((context, index) {
                        // final book = myBooks[index];
                        debugPrint("ListTile now and again");
                        return Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                          ),
                          child: ListTile(
                            // leading:
                            // Image.network(myBooks[index].thumbnailLink),
                            title: Text(myBooks[index].title),
                            subtitle: Text(myBooks[index].author),
                            onTap: () {},
                          ),
                        );
                      })),
                ),
                Center(
                  child: Text(
                    errorMessage,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
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
