import 'package:bookfinder/ui/discover_page.dart';
import 'package:bookfinder/ui/home_page.dart';
import 'package:bookfinder/ui/library.dart';
import 'package:flutter/material.dart';

class BookFinder extends StatefulWidget {
  const BookFinder({super.key});

  @override
  State<BookFinder> createState() => _BookFinderState();
}

class _BookFinderState extends State<BookFinder> {
  int tabIndex = 0;

  final tabScreens = [
    const HomeScreen(),
    const DiscoverScreen(),
    const LibraryScreen()
  ];
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
      body: tabScreens[tabIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black54,
          currentIndex: tabIndex,
          onTap: ((value) {
            setState(() {
              tabIndex = value;
            });
          }),
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Icon(Icons.book),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: "Discover"),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.download), label: "Downloads"),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_add_check_rounded), label: "Libray"),
          ]),
    );
  }
}
