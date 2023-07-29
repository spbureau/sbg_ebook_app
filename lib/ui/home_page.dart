// Finder HomePage
// Simon S. Peters @2023
// import 'dart:async';
import 'package:bookfinder/ui/books.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // var timeToday = TimeOfDay.now().toString();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          children: [
            // Head Banner
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/images/pexels-0.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Welcome to SBG Finder",
                        style: TextStyle(
                            fontFamily: 'Tangerine', color: Colors.white)),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Browse, find and manage ebooks for free",
                        style: TextStyle(
                            // fontFamily: 'Tangerine',
                            color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(DateTime.now().toString()),
                  ),
                ],
              ),
            ),

            // Popular Column items
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Popular Now",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/popularNowScreen');
                    },
                    child: const Text("See all")),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            // PopularBooks Row with ListView
            SizedBox(
              // width: double.infinity,
              height: 300,
              child: popularBookBox(),
            ),

            ///////////////////
            // NewBooks Section
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "New Books",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                TextButton(onPressed: () {}, child: const Text("See more")),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            // NewBooks with ListView.builder method
            SizedBox(
              height: 300,
              child: newBookBox(),
            ), //NewBooks Ends

            // Recommended Books Section Header
            /*
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Recommended For You",
                        style: TextStyle(fontSize: 20)),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/AllRecommendedScreen');
                        },
                        child: const Text("See all")),
                  ],
                ),
              ),
              // Recommdended Books
              // SizedBox(
              //   child: recommededBookBox(),
              // ), // former recBook ListView.builder method list

              // Recommended Books
              

              // recommededBookBox(recommendedBooks[0]),
              // recommededBookBox(recommendedBooks[1]),
              // recommededBookBox(recommendedBooks[2]),
              // recommededBookBox(recommendedBooks[3]),
              // recommededBookBox(recommendedBooks[5]),
            ]),
            */

            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Recommended For You",
                            style: TextStyle(fontSize: 20)),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, '/AllRecommendedScreen');
                            },
                            child: const Text("See all")),
                      ],
                    ),

                    // First recommdended book ends
                    recommededBookBox(recommendedBooks[14]),
                    recommededBookBox(recommendedBooks[0]),
                    recommededBookBox(recommendedBooks[1]),
                    recommededBookBox(recommendedBooks[2]),
                    recommededBookBox(recommendedBooks[3]),
                    recommededBookBox(recommendedBooks[5]),
                    recommededBookBox(recommendedBooks[4]),
                    recommededBookBox(recommendedBooks[6]),
                    recommededBookBox(recommendedBooks[7]),
                    recommededBookBox(recommendedBooks[8]),
                    recommededBookBox(recommendedBooks[9]),
                    recommededBookBox(recommendedBooks[10]),
                    recommededBookBox(recommendedBooks[11]),
                    recommededBookBox(recommendedBooks[12]),
                    recommededBookBox(recommendedBooks[13]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    // Body Ends;
  }
  // Main HomeScreen widget build ends

  // METHODS AND WIDGET BUILDERS BELOW

  // Popular Books Box widget build method
  Widget popularBookBox() {
    // debugPrint("image url: ${popularBooks.bookCover}.jpg");
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: popularBooks.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.all(15.0),
            width: 180,
            child: GestureDetector(
              onTap: () {
                popBookTappedIndex = index;
                Navigator.pushNamed(context, '/AboutPopularBook');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(popularBooks[index].bookCover),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Expanded(
                    child: Text(
                      "${popularBooks[index].bookTitle} by ${popularBooks[index].author} (${popularBooks[index].yearPublished})",
                      style: const TextStyle(
                          fontStyle: FontStyle.italic, fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  } // PopularNowBox method end

  // New Books Box method
  Widget newBookBox() {
    // debugPrint("image url: ${newBooks.bookCover}.jpg");
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: newBooks.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.all(15.0),
            width: 160,
            child: GestureDetector(
              onTap: () {
                newBookTappedIndex = index;
                Navigator.pushNamed(context, '/AboutNewBook');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // BookCover container
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(newBooks[index].bookCover),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Expanded(
                    child: Text(
                      "${newBooks[index].bookTitle} by ${newBooks[index].author} (${newBooks[index].yearPublished})",
                      style: const TextStyle(
                          fontStyle: FontStyle.italic, fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  } // NewBooks Box method ends

  // Recommended Book Box
  Widget recommededBookBox(Book recommendedBooks) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: Expanded(
        child: SizedBox(
          // width: double.infinity,
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                // Image Container
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: NetworkImage(recommendedBooks.bookCover),
                      fit: BoxFit.cover),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(recommendedBooks.bookTitle,
                          style: const TextStyle(
                              fontSize: 14.0, fontStyle: FontStyle.normal)),
                      Text(
                          "Author(s): ${recommendedBooks.author} (${recommendedBooks.yearPublished})"),
                      Text(
                        "Category: ${recommendedBooks.category}",
                        overflow: TextOverflow.ellipsis,
                      ),
                      Flexible(
                          child: Text(recommendedBooks.description,
                              style:
                                  const TextStyle(fontStyle: FontStyle.italic),
                              overflow: TextOverflow.ellipsis)),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: TextButton(
                                  // BottomSheetFunction and Widget
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        isDismissible: true,
                                        // isScrollControlled: true,
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(16)),
                                        ),
                                        builder: (BuildContext context) {
                                          return SingleChildScrollView(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Row(
                                                        // First Column item for bottonSheet title
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Text(
                                                              "Book Information",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .blue)),
                                                          IconButton(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              icon: const Icon(
                                                                  Icons.clear))
                                                        ]), // Title ends
                                                    // About Book Row for Cover, Title, Author
                                                    Row(children: [
                                                      Container(
                                                        // Image Container
                                                        width: 150,
                                                        height: 150,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                          image: DecorationImage(
                                                              image: NetworkImage(
                                                                  recommendedBooks
                                                                      .bookCover),
                                                              fit:
                                                                  BoxFit.cover),
                                                        ),
                                                      ),
                                                      // About Column: Title, Author, Category
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        8.0),
                                                                child: Text(
                                                                    "Title: ${recommendedBooks.bookTitle}"),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        8.0),
                                                                child: Text(
                                                                    "Author(s): ${recommendedBooks.author}"),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        8.0),
                                                                child: Text(
                                                                    "Category: ${recommendedBooks.category}"),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    // Book Description Row
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                          recommendedBooks
                                                              .description),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                          child: ElevatedButton(
                                                              child: Text(
                                                                  "Get now at ${recommendedBooks.sourceLibrary}"),
                                                              onPressed: () {}),
                                                        ),
                                                      ],
                                                    ),
                                                  ]),
                                            ),
                                          );
                                        });
                                  }, // Botton sheet for Details onpressed Ends
                                  child: const Text("View Details")),
                            ),
                            Expanded(
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Get on ${recommendedBooks.sourceLibrary}",
                                    overflow: TextOverflow.ellipsis,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  } // RecommendedBookBox ends
}
// HomeScreen class end
///////////////////////

// Link(
//   uri: Uri.parse(recommendedBooks.sourceUrl),
//      target: LinkTarget.self,
//      builder: (BuildContext context, followLink) {
//         return ElevatedButton(
//           onPressed: followLink,
//           child: Text(
//           "Get on ${recommendedBooks.sourceLibrary}"),
//           );
//          }),

Widget bookDetailsSheet() {
  return ListView(
    children: [
      Row(
        // mainAxisAlignment: M
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Book Details",
                style: TextStyle(color: Colors.green, fontSize: 18)),
          ),
          IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                // Navigator.pop(BuildContext context);
              }),
        ],
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                prefixIcon: const Icon(Icons.search_outlined),
                hintText: "Type keyword here to search",
                suffixIcon: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.clear))),
            // controller: searchController,
          ),
        ),
      ),
    ],
  );
}
