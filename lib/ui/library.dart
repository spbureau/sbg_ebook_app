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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.history),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child:
                      Text("Recently opened", style: TextStyle(fontSize: 20)),
                )
              ],
            ),
            Row(
              children: [
                const Icon(Icons.bookmark_add),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Saved books", style: TextStyle(fontSize: 20)),
                ),
                Expanded(
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.refresh)))
              ],
            ),
            // Saved books builder
            savedBooksBox(),
            const Center(
              child: Text("...all done..."),
            )
          ],
        ),
      ),
    );
  } // Widget build method ends
}

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
