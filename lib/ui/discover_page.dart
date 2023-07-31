// Discover Page 2

import 'package:flutter/material.dart';

import 'books.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  TextEditingController searchTermController = TextEditingController();

  List<Book> viewBooks = [];

  @override
  void initState() {
    // TODo: implement initState
    debugPrint(allBooks.length.toString());
    viewBooks = allBooks;
    super.initState();
  }

  searchFilter(String keyword) {
    List<Book> matchingBooks = [];
    if (keyword.isEmpty) {
      matchingBooks = allBooks;
    } else {
      matchingBooks = allBooks
          .where((book) =>
              book.bookTitle.contains(keyword) ||
              book.author.contains(keyword) ||
              book.category.contains(keyword))
          .toList();
    }
    setState(() {
      debugPrint("found books: ${viewBooks.length.toString()}");
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
          // #1
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Discover in Finder",
              style: TextStyle(fontSize: 20),
            ),
          ),
          // #2
          Row(
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
            ],
          ),
          // #3
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Filter view by search",
                    style: TextStyle(fontSize: 20)),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        viewBooks = allBooks;
                        searchTermController.clear();
                      });
                    },
                    child: const Text("Reset all"),
                  ),
                ),
              ],
            ),
          ),
          // #4
          SingleChildScrollView(
            child: SizedBox(
              height: 600,
              child: viewBooksBuilder(),
            ),
          ),
        ],
      ),
    );
  }

  Widget viewBooksBuilder() {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: viewBooks.length,
        itemBuilder: ((BuildContext context, int index) {
          // final book = myBooks[index];
          debugPrint("ListTile now and again");
          debugPrint(viewBooks[index].bookTitle);
          return ListTile(
            leading: Container(
              // Image Container
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: NetworkImage(viewBooks[index].bookCover),
                    fit: BoxFit.fill),
              ),
            ),
            title: Text(viewBooks[index].bookTitle),
            subtitle: Text(
              viewBooks[index].author,
              overflow: TextOverflow.ellipsis,
            ),
            isThreeLine: true,
            onTap: () {
              allBookTappedIndex = index;
              Navigator.pushNamed(context, '/aboutAllBooks');
            },
          );
        }));
  } // viewBooks method ends
}
