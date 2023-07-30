import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyApiSearch extends StatefulWidget {
  const MyApiSearch({super.key});

  @override
  State<MyApiSearch> createState() => _MyApiSearchState();
}

class _MyApiSearchState extends State<MyApiSearch> {
  String url = "https://jsonplaceholder.typicode.com/users";
  List<Book2> book2 = [];

  Future<void> searchNow() async {
    final res = await http.get(Uri.parse(url));
    List jsonRes = jsonDecode(res.body);
    for (var element in jsonRes) {
      Book2 book = Book2.fromJson(element);
      book2.add(book);

      // # this works though
      // Map obj = element;
      // String name = obj['name'];
      // debugPrint(name);
    }
    // debugPrint(title.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          ElevatedButton(onPressed: searchNow, child: const Text("Query API")),
    );
  }
}

// class
class Book2 {
  Book2(this.title, this.author);
  String title;
  String author;

// factory constructor
  factory Book2.fromJson(Map<String, dynamic> json) {
    return Book2(
      json['items']['volumeInfo']['title'] as String,
      json['items']['volumeInfo']['authors'] as String,
    );
  }
}
