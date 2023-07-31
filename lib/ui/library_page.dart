import 'package:flutter/material.dart';
import 'books.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Library header
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Putting Icon and label together in another row
                  Row(
                    children: [
                      Icon(Icons.bookmark_add),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child:
                            Text("Saved books", style: TextStyle(fontSize: 20)),
                      ),
                    ],
                  ),

                  // TextButton(
                  //     onPressed: () {},
                  //     child: const Text(
                  //       "Refresh",
                  //       // style: TextStyle(fontStyle: FontStyle.italic)
                  //     )),
                ],
              ),
            ),

            // #Books
            // Saved books builder
            /*
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: SizedBox(
                width: double.infinity,
                height: 100,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Container(
                    // Image Container
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: NetworkImage(savedBooks[0].bookCover),
                          fit: BoxFit.cover),
                    ),
                  ),
                  // the Column for book details
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${savedBooks[0].bookTitle} by ${savedBooks[0].author}",
                            style: const TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 16),
                          ),
                          // const Expanded(child: Text("")),
                          // Padding(
                          //   padding:
                          //       const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          //   child: Text(
                          //     savedBooks[0].yearPublished,
                          //     style: TextStyle(
                          //         fontSize: 16, color: Colors.cyan[900]),
                          //   ),
                          // ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Available
                                Text(
                                  "Availble on ${savedBooks[0].sourceLibrary}",
                                  style: const TextStyle(fontSize: 14),
                                ),
                                // View button
                                ElevatedButton(
                                    child: const Text("View Details"),
                                    onPressed: () {}),
                                const SizedBox(
                                  width: 15,
                                ),
                                // #Remove Button with Icon
                                ElevatedButton(
                                  child: const Row(
                                    children: [
                                      Icon(Icons.delete),
                                      Text("Remove")
                                    ],
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      savedBooks.remove(savedBooks[0]);
                                      debugPrint("Book removed");
                                    });
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ) 
                ]),
              ),
            ),
            */ // savedBooksBuilder() design,

            // Saved books: ListView/tile builder
            SingleChildScrollView(
              child: SizedBox(
                height: 600,
                child: savedBooksBuilder(),
              ),
            ),
            const Center(
              child: Text("..."),
            )
          ],
        ),
      ),
    );
  } // Screen Widget build method ends

  // OTHER METHODS
  // Saved Books builder method
  Widget savedBooksBuilder() {
    return ListView.builder(
        itemCount: savedBooks.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Container(
              // Image Container
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: NetworkImage(savedBooks[index].bookCover),
                    fit: BoxFit.cover),
              ),
            ),
            title: Text(savedBooks[index].bookTitle),
            subtitle: Text(savedBooks[index].author),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  savedBooks.remove(savedBooks[index]);
                });
              },
              icon: const Icon(Icons.delete),
              tooltip: "Remove from library",
            ),
            onTap: () {
              allBookTappedIndex = index;
              Navigator.pushNamed(context, '/aboutAllBooks');
            },
          );
        });
  }

  Widget savedBooksBuilder2() {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: savedBooks.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: SizedBox(
              width: double.infinity,
              height: 180,
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Container(
                  // Image Container
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        image: NetworkImage(savedBooks[index].bookCover),
                        fit: BoxFit.cover),
                  ),
                ),
                // the Column for book details
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${savedBooks[index].bookTitle} by ${savedBooks[index].author}",
                          style: const TextStyle(
                              fontStyle: FontStyle.italic, fontSize: 20),
                        ),
                        // const Expanded(child: Text("")),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Text(
                            savedBooks[index].yearPublished,
                            style: TextStyle(
                                fontSize: 16, color: Colors.cyan[900]),
                          ),
                        ),
                        Text(
                          "Availble on ${savedBooks[index].sourceLibrary}",
                          style: const TextStyle(fontSize: 14),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // View button
                            ElevatedButton(
                                child: const Text("View Details"),
                                onPressed: () {}),
                            const SizedBox(
                              width: 15,
                            ),
                            // #Remove Button with Icon
                            ElevatedButton(
                              child: const Row(
                                children: [Icon(Icons.delete), Text("Remove")],
                              ),
                              onPressed: () {},
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ]),
            ),
          );
        });
  }
}
// #ENDS

/*
Widget savedBooksBox() {
  return ListView.builder(
      itemCount: savedBooks.length,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 200,
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              // Image Container
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: NetworkImage(savedBooks[index].bookCover),
                    fit: BoxFit.cover),
              ),
            ),
            // the Column for book details
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      savedBooks[index].bookTitle,
                      style: const TextStyle(
                          fontStyle: FontStyle.italic, fontSize: 20),
                    ),
                    // const Expanded(child: Text("")),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Text(
                        "by ${savedBooks[index].author}, ${savedBooks[index].yearPublished}",
                        style: TextStyle(fontSize: 16, color: Colors.cyan[900]),
                      ),
                    ),
                    Text(
                      "Source Library: ${popularBooks[popBookTappedIndex].sourceLibrary}",
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            )
          ]),
        );
      });
}
*/
