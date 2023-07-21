import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final String apiKey = "AIzaSyAxrpyHDxfg2aJs8xcxK207e7Uy9XbQnDY";
  var url = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            "Search in Finder",
            style: TextStyle(color: Colors.red),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(6.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            prefixIcon: const Icon(Icons.search),
                            hintText: "Search by title, author or category...",
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.clear))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text("Search")),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
