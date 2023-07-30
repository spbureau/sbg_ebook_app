import 'package:bookfinder/ui/books.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
// import 'package:url_launcher/url_launcher.dart';

// ABOUT POPULAR BOOKS
class AboutPopularBookScreen extends StatefulWidget {
  const AboutPopularBookScreen({super.key});

  @override
  State<AboutPopularBookScreen> createState() => AboutPopularBookScreenState();
}

class AboutPopularBookScreenState extends State<AboutPopularBookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        foregroundColor: Colors.black,
        title: const Text("About book"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 220,
                child: Expanded(
                  child: Row(
                    // Row for book details
                    children: [
                      Container(
                        width: 150,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    popularBooks[popBookTappedIndex].bookCover),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                popularBooks[popBookTappedIndex].bookTitle,
                                style: const TextStyle(
                                    fontStyle: FontStyle.italic, fontSize: 22),
                              ),
                              // const Expanded(child: Text("")),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 8.0),
                                child: Text(
                                  "by ${popularBooks[popBookTappedIndex].author}, ${newBooks[4].yearPublished}",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.cyan[900]),
                                ),
                              ),
                              Text(
                                "Category: ${popularBooks[popBookTappedIndex].category}",
                                style: const TextStyle(fontSize: 14),
                              ),
                              Text(
                                "Source Library: ${popularBooks[popBookTappedIndex].sourceLibrary}",
                                style: const TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // Description Section
              const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("Description",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(popularBooks[popBookTappedIndex].description),
              ),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Link(
                    uri: Uri.parse(popularBooks[popBookTappedIndex].sourceUrl),
                    target: LinkTarget.self,
                    builder: (BuildContext context, followLink) {
                      return ElevatedButton(
                        child: const Text("Launch Book"),
                        onPressed: () {
                          followLink;
                        },
                      );
                    }),
                ElevatedButton(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.bookmark_add),
                      Text("Add to Library"),
                    ],
                  ),
                  onPressed: () {},
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
} // About Popular Books Ends

// ABOUT NEW BOOKS
class AboutNewBookScreen extends StatefulWidget {
  const AboutNewBookScreen({super.key});

  @override
  State<AboutNewBookScreen> createState() => _AboutNewBookScreenState();
}

class _AboutNewBookScreenState extends State<AboutNewBookScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        foregroundColor: Colors.black,
        title:
            const Text("About book", style: TextStyle(color: Colors.black87)),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: 240,
                child: Expanded(
                  child: Row(
                    // Row for book details
                    children: [
                      Container(
                        width: 150,
                        height: 220,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    newBooks[newBookTappedIndex].bookCover),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                newBooks[newBookTappedIndex].bookTitle,
                                style: const TextStyle(
                                    fontStyle: FontStyle.italic, fontSize: 22),
                              ),
                              // const Expanded(child: Text("")),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 8.0),
                                child: Text(
                                  "by ${newBooks[newBookTappedIndex].author}, ${newBooks[4].yearPublished}",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.cyan[900]),
                                ),
                              ),
                              Text(
                                "Category: ${newBooks[newBookTappedIndex].category}",
                                style: const TextStyle(fontSize: 14),
                                overflow: TextOverflow.fade,
                              ),
                              Text(
                                "Source Library: ${newBooks[newBookTappedIndex].sourceLibrary}",
                                style: const TextStyle(fontSize: 14),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // Description Section
              const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text("Description",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  newBooks[newBookTappedIndex].description,
                  style: const TextStyle(overflow: TextOverflow.fade),
                ),
              ),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Link(
                  uri: Uri.parse(newBooks[newBookTappedIndex].sourceUrl),
                  builder: (BuildContext context, followLink) {
                    return ElevatedButton(
                      child: const Text("Launch Book"),
                      onPressed: () {
                        followLink;
                      },
                    );
                  },
                ),
                ElevatedButton(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.bookmark_add),
                      Text("Add to Library"),
                    ],
                  ),
                  onPressed: () {
                    /*
                    savedBooks.add(Book(bookTitle, author, yearPublished, category, bookCover, description, sourceUrl, sourceLibrary))
                    */
                  },
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
// About New Books Screen Ends

class AllBooks extends StatefulWidget {
  const AllBooks({super.key});

  @override
  State<AllBooks> createState() => _AllBooksState();
}

class _AllBooksState extends State<AllBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("All Books")),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(8),
              child: ListView.builder(
                  itemCount: allBooks.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container();
                  })),
        ));
  }
}
