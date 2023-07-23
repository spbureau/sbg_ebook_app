// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Book {
//   String id;
//   String title;
//   String author;
//   String description;

//   Book(this.id, this.title, this.author, this.description);
//   factory Book.fromJson(Map<String, dynamic> json) {
//     return Book(
//       id: json['id'],
//       title: json['volumeInfo']['title'],
//       author: json[],
//       description);
//   }
// }

// class DiscoverScreen extends StatefulWidget {
//   final Book finalBook;
//   const DiscoverScreen(this.finalBook, {super.key});
//   @override
//   State<DiscoverScreen> createState() => _DiscoverScreenState();
// }

// class _DiscoverScreenState extends State<DiscoverScreen> {
//   final String apiKey = "AIzaSyAxrpyHDxfg2aJs8xcxK207e7Uy9XbQnDY";

//   List<Book> myBooks = [];

//   Future<List> searchBooks() async {
//     var url = "https://www.googleapis.com/books/v1/volumes?q=business";
//     final response = await http.get(Uri.parse(url));
//     if (response.statusCode == 200) {
//       final searchResult = jsonDecode(response.body);
//       debugPrint(response.body);
//       // myBooks = searchResult['items'].fromM
//       // debugPrint(response as String?);
//       setState(() {
//         debugPrint("Got some response!");
//         myBooks = responseToString(searchResult['items']);
//         // debugPrint(finalBooks as String?);
//       });
//     } else {
//       debugPrint("Couldn't find any book!");
//     }
//     debugPrint("Done parsing and returned as below");
//     return myBooks;
//   }

//   List<GoogleBook> responseToString(List<dynamic> searchResult) {
//     List<GoogleBook> parsedBooks = [];
//     for (var book in searchResult) {
//       debugPrint("About parsing them to GoogleBooks and myBooks");

//       // parsedBooks.add(GoogleBook(
//       //   book['item']['volumeInfo']
//       //       ['title'], // parsing the responseData as argument to the book
//       //   book['item']['volumeInfo']['authors'][0],
//       //   book['item']['volumeInfo']['description'] ?? "No Description avalable",
//       //   book['item']['volumeInfo']['imageLinks']['thumbnail'],
//       // ));
//       var volumeInfo = book['volumeInfo'];
//       String title = volumeInfo['title'];
//       String author = (volumeInfo['authors'] as List<dynamic>).isNotEmpty
//           ? volumeInfo['authors'][0]
//           : "Unknown Author";
//       String description =
//           volumeInfo['description'] ?? "No Description available";
//       String thumbnailLink =
//           volumeInfo['imageLinks']['thumbnail'] ?? "No Thumbnail";

//       parsedBooks.add(Book(
//         title,
//         author,
//         description,
//         thumbnailLink,
//       ));
//     }
//     debugPrint("Done parsing and returned as below");
//     return parsedBooks;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text(
//           "Discover in Finder",
//           style: TextStyle(color: Colors.red),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(6.0),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       decoration: InputDecoration(
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(16)),
//                           prefixIcon: const Icon(Icons.search),
//                           hintText: "Search by title, author or category...",
//                           suffixIcon: IconButton(
//                               onPressed: () {}, icon: const Icon(Icons.clear))),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: ElevatedButton(
//                         onPressed: searchBooks, child: const Text("Search")),
//                   ),
//                 ],
//               ), // Search Field Row Ends
//               // Search Categories
//               const Padding(
//                 padding: EdgeInsets.all(8.0),
//                 child: Text("Search by Category"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// List categories = [
//   "Business",
//   "History",
//   "Science",
//   "Computer Science",
//   "Technology",
//   "Health",
//   "Arts",
//   "Social Science",
//   "Mathematics",
//   "Politcal Science"
// ];

// List<Widget> catergoriesSection(List categories) {
//   List<Widget> categoriesList = [];
//   for (int item in categories) {
//     categoriesList.add(Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Container(
//           color: Colors.blue,
//           decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
//           child: Text(
//             "${categories[item]}",
//             style: const TextStyle(color: Colors.white),
//           )),
//     ));
//   }
//   return categoriesList;
// }
