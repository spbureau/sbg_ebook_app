//     // BOOKFINDER 1.0
//     // RECOMMENDED BOOKS LISTVIEW BUILDER METHOD, HAS RENDERING ISSUE

//   import 'package:flutter/material.dart';

// import '../books.dart';

//   Widget recommededBookBox() {
//       return ListView.builder(
//           scrollDirection: Axis.vertical,
//           itemCount: recommendedBooks.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Container(
//               padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
//               height: 200,
//               child: Row(
//                 children: [
//                   //  BookCover:Image Container
//                   Container(
//                     width: 200,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10.0),
//                       image: DecorationImage(
//                           image: NetworkImage(recommendedBooks[index].bookCover),
//                           fit: BoxFit.cover),
//                     ),
//                   ),
//                   Flexible(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(recommendedBooks[index].bookTitle,
//                               style: const TextStyle(
//                                   fontSize: 14.0, fontStyle: FontStyle.normal)),
//                           Text(
//                               "Author(s): ${recommendedBooks[index].author} (${recommendedBooks[index].yearPublished})"),
//                           Text(
//                             "Category: ${recommendedBooks[index].category}",
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                           Flexible(
//                               child: Text(recommendedBooks[index].description,
//                                   style: const TextStyle(
//                                       fontStyle: FontStyle.italic),
//                                   overflow: TextOverflow.ellipsis)),
//                           Expanded(
//                             flex: 1,
//                             child: Row(
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(5.0),
//                                   child: TextButton(
//                                       //  BottomSheetFunction and Widget
//                                       onPressed: () {
//                                         showModalBottomSheet(
//                                             context: context,
//                                             isDismissible: true,
//                                               isScrollControlled: true,
//                                             shape: const RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.vertical(
//                                                   top: Radius.circular(16)),
//                                             ),
//                                             builder: (BuildContext context) {
//                                               return SingleChildScrollView(
//                                                 child: Padding(
//                                                   padding:
//                                                       const EdgeInsets.all(8.0),
//                                                   child: Column(
//                                                       mainAxisAlignment:
//                                                           MainAxisAlignment
//                                                               .spaceAround,
//                                                       children: [
//                                                         Row(
//                                                        //       First Column item for bottonSheet title
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .spaceBetween,
//                                                             children: [
//                                                               const Text(
//                                                                   "Book Information",
//                                                                   style: TextStyle(
//                                                                       color: Colors
//                                                                           .blue,
//                                                                       fontSize:
//                                                                           18)),
//                                                               IconButton(
//                                                                 onPressed: () {
//                                                                   Navigator.pop(
//                                                                       context);
//                                                                 },
//                                                                 icon: const Icon(
//                                                                     Icons.clear),
//                                                                 tooltip: "Close",
//                                                               )
//                                                             ]),  // Title ends
//                                                        //   About Book Row for Cover, Title, Author
//                                                         Row(children: [
//                                                           Container(
//                                                         //      Image Container
//                                                             width: 150,
//                                                             height: 150,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .circular(
//                                                                           10.0),
//                                                               image: DecorationImage(
//                                                                   image: NetworkImage(
//                                                                       recommendedBooks[
//                                                                               index]
//                                                                           .bookCover),
//                                                                   fit: BoxFit
//                                                                       .cover),
//                                                             ),
//                                                           ),
//                                                           //  About Column: Title, Author, Category
//                                                           Expanded(
//                                                             child: Padding(
//                                                               padding:
//                                                                   const EdgeInsets
//                                                                       .all(8.0),
//                                                               child: Column(
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .spaceEvenly,
//                                                                 crossAxisAlignment:
//                                                                     CrossAxisAlignment
//                                                                         .start,
//                                                                 children: [
//                                                                   Padding(
//                                                                     padding:
//                                                                         const EdgeInsets
//                                                                                 .all(
//                                                                             8.0),
//                                                                     child: Text(
//                                                                         "Title: ${recommendedBooks[index].bookTitle}"),
//                                                                   ),
//                                                                   Padding(
//                                                                     padding:
//                                                                         const EdgeInsets
//                                                                                 .all(
//                                                                             8.0),
//                                                                     child: Text(
//                                                                         "Author(s): ${recommendedBooks[index].author}"),
//                                                                   ),
//                                                                   Padding(
//                                                                     padding:
//                                                                         const EdgeInsets
//                                                                                 .all(
//                                                                             8.0),
//                                                                     child: Text(
//                                                                         "Category: ${recommendedBooks[index].category}"),
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ]),
//                                                         //  Book Description Row
//                                                         Padding(
//                                                           padding:
//                                                               const EdgeInsets
//                                                                   .all(8.0),
//                                                           child: Text(
//                                                               recommendedBooks[
//                                                                       index]
//                                                                   .description),
//                                                         ),
//                                                         Row(
//                                                           children: [
//                                                               Expanded(
//                                                                 child: ElevatedButton(
//                                                                     child: Text(
//                                                                         "Get now at ${recommendedBooks[index].sourceLibrary}"),
//                                                                     onPressed: () {}),
//                                                               ),
//                                                             Expanded(
//                                                               child: Link(
//                                                                   uri: Uri.parse(
//                                                                       recommendedBooks[
//                                                                               index]
//                                                                           .sourceUrl),
//                                                                   target:
//                                                                       LinkTarget
//                                                                           .self,
//                                                                   builder: (BuildContext
//                                                                           context,
//                                                                       followLink) {
//                                                                     return ElevatedButton(
//                                                                       onPressed:
//                                                                           followLink,
//                                                                       child: Text(
//                                                                           "Get now at ${recommendedBooks[index].sourceLibrary}",
//                                                                           overflow:
//                                                                               TextOverflow.ellipsis),
//                                                                     );
//                                                                   }),
//                                                             )
//                                                           ],
//                                                         ),
//                                                       ]),
//                                                 ),
//                                               );
//                                             });
//                                       },   Botton sheet for Book Information of #ViewDetails onpressed Ends
//                                       child: const Text("View Details")),
//                                 ),
//                                  // Get Book Button in Link
//                                 Link(
//                                     uri: Uri.parse(
//                                         recommendedBooks[index].sourceUrl),
//                                     target: LinkTarget.self,
//                                     builder: (BuildContext context, followLink) {
//                                       return ElevatedButton(
//                                         onPressed: followLink,
//                                         child: Text(
//                                             "Get on ${recommendedBooks[index].sourceLibrary}"),
//                                       );
//                                     }),
//                                   Expanded(
//                                     child: ElevatedButton(
//                                         onPressed: () {
//                                             //Function to launch the URL
//                                           debugPrint("get book pressed");
//                                         },
//                                         child: Text(
//                                           "Get on ${recommendedBooks.sourceLibrary}",
//                                           overflow: TextOverflow.ellipsis,
//                                         )),
//                                   ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             );
//           });
//     }   //RecommendedBooksBox Widget build return ends


//   // Another  RecommendedBook List
//   // Didn't work
//   // So I'm using the recommemdedBooksBox up for now
// /*
// List<Widget> recommededBooksList(List<dynamic> recommendedBooks) {
//   List<Widget> recommendedList = [];
//   for (var book in recommendedBooks) {
//     recommendedList.add(Padding(
//       padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
//       child: SizedBox(
//         width: double.infinity,
//         height: 200,
//         child: Row(
//           children: [
//             Container(
//                 Image Container
//               width: 200,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//                 image: DecorationImage(
//                     image: NetworkImage(book.bookCover), fit: BoxFit.cover),
//               ),
//             ),
//             Flexible(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(book.bookTitle,
//                         style: const TextStyle(fontSize: 14.0)),
//                     Text("Author(s): ${book.author} (${book.yearPublished})"),
//                     Text("Category: ${book.category}"),
//                     Flexible(
//                         child: Text(book.description,
//                             style: const TextStyle(fontStyle: FontStyle.italic),
//                             overflow: TextOverflow.ellipsis)),
//                     Expanded(
//                       flex: 1,
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(5.0),
//                             child: TextButton(
//                                 onPressed: () {
//                                 },
//                                 child: Container(
//                                     decoration: const BoxDecoration(
//                                       color: Colors.grey,
//                                       shape: BoxShape.rectangle,
//                                     ),
//                                     child: const Text("View Details"))),
//                           ),
//                           ElevatedButton(
//                               onPressed: () {},
//                               child: Expanded(
//                                   child: Text("Get on ${book.sourceLibrary}"))),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     ));
//   }
//   return recommendedList;
// }*/



//   // Initial Popular Book Container Design with BB and Joojo
// /*
//   // Second Column item
//   SizedBox(
//     width: double.infinity,
//     child: ListView(
//       scrollDirection: Axis.horizontal,
//       children: [
//           First Pop Book
//         Padding(
//           padding: const EdgeInsets.only(right: 15.0),
//           child: Container(
//             width: 150,
//             height: 200,
//             decoration: BoxDecoration(
//                 image: const DecorationImage(
//                     image: AssetImage("assets/images/pexels-5.jpg"),
//                     fit: BoxFit.cover),
//                 borderRadius: BorderRadius.circular(10)),
//           ),
//         ),
//           Second Popular Book
//         Padding(
//           padding: const EdgeInsets.only(right: 15.0),
//           child: Container(
//             width: 150,
//             height: 200,
//             decoration: BoxDecoration(
//                 image: const DecorationImage(
//                     image: AssetImage("assets/images/pexels-4.jpg"),
//                     fit: BoxFit.cover),
//                 borderRadius: BorderRadius.circular(10)),
//           ),
//         ),
//           Third Popular Book
//         Padding(
//           padding: const EdgeInsets.only(right: 15.0),
//           child: Container(
//             width: 150,
//             height: 200,
//             decoration: BoxDecoration(
//                 image: const DecorationImage(
//                     image: AssetImage("assets/images/pexels-3.jpg"),
//                     fit: BoxFit.cover),
//                 borderRadius: BorderRadius.circular(10)),
//           ),
//         ),
//           Fourth Popular Book
//         Padding(
//           padding: const EdgeInsets.only(right: 15.0),
//           child: Container(
//             width: 150,
//             height: 200,
//             decoration: BoxDecoration(
//                 image: const DecorationImage(
//                     image: AssetImage("assets/images/pexels-2.jpg"),
//                     fit: BoxFit.cover),
//                 borderRadius: BorderRadius.circular(10)),
//           ),
//         ),
//           Last Popular Book
//         Padding(
//           padding: const EdgeInsets.only(right: 15.0),
//           child: Container(
//             width: 150,
//             height: 200,
//             decoration: BoxDecoration(
//                 image: const DecorationImage(
//                     image: AssetImage("assets/images/pexels-3.jpg"),
//                     fit: BoxFit.cover),
//                 borderRadius: BorderRadius.circular(10)),
//           ),
//         ),
//       ],
//     ),
//   ),

// */