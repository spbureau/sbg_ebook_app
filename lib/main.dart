import 'package:bookfinder/ui/popular_now.dart';
import 'package:flutter/material.dart';
import 'ui/bookfinder.dart';

void main() {
  runApp(MaterialApp(
    title: "SBG EBook Finder",
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
      '/popularNowScreen': (context) => const PopularNowScreen(),
      '/AllRecommendedScreen': (context) => const AllRecommended()
    },
    debugShowCheckedModeBanner: false,
  ));
}
