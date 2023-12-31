import 'package:bookfinder/ui/about_books.dart';
import 'package:flutter/material.dart';
import 'ui/bookfinder.dart';

void main() {
  runApp(MaterialApp(
    title: "SBG Ebook Finder",
    home: const BookFinder(),
    theme: ThemeData(
        fontFamily: "Montserrat",
        // primarySwatch: Colors.red,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          // backgroundColor: Colors.white,
          // color: Colors.red,
        )),
    // initialRoute: '/',
    routes: {
      '/home': (context) => const BookFinder(),
      '/aboutNewBook': (context) => const AboutNewBookScreen(),
      '/aboutPopularBook': (context) => const AboutPopularBookScreen(),
      '/aboutAllBooks': (context) => const AboutAllBooksScreen()
    },
    debugShowCheckedModeBanner: false,
  ));
}
