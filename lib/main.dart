import 'package:bookfinder/ui/popular_now.dart';
import 'package:flutter/material.dart';
import 'ui/bookfinder.dart';

void main() {
  runApp(MaterialApp(
    title: "SBG EBook Finder",
    home: const BookFinder(),
    theme: ThemeData(),
    // initialRoute: '/',
    routes: {
      '/home': (context) => const BookFinder(),
      'popularNowScreen': (context) => const PopularNowScreen(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
