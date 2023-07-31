// import 'dart:convert';
// import 'package:bookfinder/ui/books.dart';

import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

import '../books.dart';

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

  List<Book> viewBooks = [];

  // @override
  @override
  void initState() {
    // // TODo function here
    viewBooks = allBooks;
    super.initState();
  }

  searchFilter(String keyword) {
    List<Book> matchingBooks = [];
    if (keyword.isEmpty) {
      matchingBooks = allBooks;
    } else {
      matchingBooks =
          allBooks.where((book) => book.bookTitle == keyword).toList();
    }
    setState(() {
      viewBooks = matchingBooks;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
                      onChanged: (value) => searchFilter(value),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    child: const Text("Search"),
                    onPressed: () {
                      // setState(() {

                      // });
                      // searchBooks(searchTermController.text);
                    },
                  ),
                ),
              ],
            ),
          ), // Search Field Row Ends

          // Search Categories
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Search by Category",
              style: TextStyle(fontSize: 16),
            ),
          ),

/*
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
        */
          const SizedBox(
            height: 10,
            child: Text("All Books", style: TextStyle(fontSize: 20)),
          ),
/*
            SingleChildScrollView(
              padding: const EdgeInsets.all(8),
              child: ListView.builder(
                  itemCount: viewBooks.length,
                  itemBuilder: ((BuildContext context, int index) {
                    // final book = myBooks[index];
                    debugPrint("ListTile now and again");
                    // debugPrint(finalBooks[index].thumbnailLink);
                    // debugPrint(finalBooks[index].title);
                    // debugPrint(finalBooks[index].author);
                    return ListTile(
                      leading: Container(
                        // Image Container
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              image: NetworkImage(viewBooks[index].bookCover),
                              fit: BoxFit.cover),
                        ),
                      ),
                      title: Text(viewBooks[index].bookTitle),
                      subtitle: Text(viewBooks[index].author),
                      onTap: () {},
                    );
                  })),
            ),
*/
        ],
      ),
    );
  }
  // Body Ends

  // OTHER METHODS BELOW

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
// END OF CLASS
