import 'package:bookfinder/ui/books.dart';
import 'package:flutter/material.dart';

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
                ElevatedButton(
                  child: const Text("Launch Book"),
                  onPressed: () {},
                ),
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
}
// About New Books Screen Ends

// About Popular Book Screen
class AboutPopularBookScreen extends StatelessWidget {
  const AboutPopularBookScreen({super.key});

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
                                newBooks[newBookTappedIndex].bookTitle,
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
                ElevatedButton(
                  child: const Text("Launch Book"),
                  onPressed: () {},
                ),
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
}

class AllRecommended extends StatefulWidget {
  const AllRecommended({super.key});

  @override
  State<AllRecommended> createState() => _AllRecommendedState();
}

class _AllRecommendedState extends State<AllRecommended> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Recommended"),
        elevation: 0,
      ),
    );
  }
}
