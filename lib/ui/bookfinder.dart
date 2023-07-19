import 'package:bookfinder/ui/books.dart';
import 'package:flutter/material.dart';

class BookFinder extends StatefulWidget {
  const BookFinder({super.key});

  @override
  State<BookFinder> createState() => _BookFinderState();
}

class _BookFinderState extends State<BookFinder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SBG Finder"),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_active))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Head Banner
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/pexels-0.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Welcome to SBG Finder"),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Browser, read Ebooks for free"),
                    ),
                  ],
                ),
              ),

              // Popular Column items
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Now",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/popularBooksScreen');
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
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    popularBookBox(popularBooks[0]),
                    popularBookBox(popularBooks[1]),
                    popularBookBox(popularBooks[2]),
                    popularBookBox(popularBooks[3]),
                    popularBookBox(popularBooks[4]),
                    popularBookBox(popularBooks[5]),
                  ],
                ),
              ),

              ///////////////////
              // NewBooks Section
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "New Books",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(onPressed: () {}, child: const Text("See more")),
                ],
              ),
              const SizedBox(
                height: 10,
              ),

              // NewBooks Row with ListView
              SizedBox(
                // width: double.infinity,
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    newBookBox(newBooks[0]),
                    newBookBox(newBooks[1]),
                    newBookBox(newBooks[2]),
                    newBookBox(newBooks[3]),
                    newBookBox(newBooks[4]),
                  ],
                ),
              ), // NewBooks Section Ends

              // Recommended Books
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Recommended"),
                          TextButton(
                              onPressed: () {}, child: const Text("See all")),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: Row(
                        children: [
                          Container(
                            // Image Container
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/pexels-0.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("The Roman and the Teuton"),
                                  const Text("Author: Catherine Carswell"),
                                  const Text("Year published: 2000"),
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: const Text("View Details")),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // Body Ends

      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black54,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.book),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "Discover"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: "Downloads"),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_add_check_rounded), label: "Libray"),
          ]),
    );
  }
}

// Popular Books Box method
Widget popularBookBox(Book popularBooks) {
  debugPrint("image url: ${popularBooks.bookCover}.jpg");
  return Container(
    padding: const EdgeInsets.all(15.0),
    width: 180,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 180,
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage("assets/images/${popularBooks.bookCover}.jpg"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Expanded(
          child: Text(
            "${popularBooks.bookTitle} by ${popularBooks.author} (${popularBooks.yearPublished})",
            style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 14),
          ),
        )
      ],
    ),
  );
}

// New Books Box method
Widget newBookBox(Book newBooks) {
  debugPrint("image url: ${newBooks.bookCover}.jpg");
  return Container(
    padding: const EdgeInsets.all(15.0),
    width: 151,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/${newBooks.bookCover}.jpg"),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Expanded(
          child: Text(
            "${newBooks.bookTitle} by ${newBooks.author} (${newBooks.yearPublished})",
            style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 14),
          ),
        )
      ],
    ),
  );
}


// // Initial Popular Book Container Design

            // Second Column item
            // SizedBox(
            //   width: double.infinity,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       // First Pop Book
            //       Padding(
            //         padding: const EdgeInsets.only(right: 15.0),
            //         child: Container(
            //           width: 150,
            //           height: 200,
            //           decoration: BoxDecoration(
            //               image: const DecorationImage(
            //                   image: AssetImage("assets/images/pexels-5.jpg"),
            //                   fit: BoxFit.cover),
            //               borderRadius: BorderRadius.circular(10)),
            //         ),
            //       ),
            //       // Second Popular Book
            //       Padding(
            //         padding: const EdgeInsets.only(right: 15.0),
            //         child: Container(
            //           width: 150,
            //           height: 200,
            //           decoration: BoxDecoration(
            //               image: const DecorationImage(
            //                   image: AssetImage("assets/images/pexels-4.jpg"),
            //                   fit: BoxFit.cover),
            //               borderRadius: BorderRadius.circular(10)),
            //         ),
            //       ),
            //       // Third Popular Book
            //       Padding(
            //         padding: const EdgeInsets.only(right: 15.0),
            //         child: Container(
            //           width: 150,
            //           height: 200,
            //           decoration: BoxDecoration(
            //               image: const DecorationImage(
            //                   image: AssetImage("assets/images/pexels-3.jpg"),
            //                   fit: BoxFit.cover),
            //               borderRadius: BorderRadius.circular(10)),
            //         ),
            //       ),
            //       // Fourth Popular Book
            //       Padding(
            //         padding: const EdgeInsets.only(right: 15.0),
            //         child: Container(
            //           width: 150,
            //           height: 200,
            //           decoration: BoxDecoration(
            //               image: const DecorationImage(
            //                   image: AssetImage("assets/images/pexels-2.jpg"),
            //                   fit: BoxFit.cover),
            //               borderRadius: BorderRadius.circular(10)),
            //         ),
            //       ),
            //       // Last Popular Book
            //       Padding(
            //         padding: const EdgeInsets.only(right: 15.0),
            //         child: Container(
            //           width: 150,
            //           height: 200,
            //           decoration: BoxDecoration(
            //               image: const DecorationImage(
            //                   image: AssetImage("assets/images/pexels-3.jpg"),
            //                   fit: BoxFit.cover),
            //               borderRadius: BorderRadius.circular(10)),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
