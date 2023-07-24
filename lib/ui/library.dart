import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: Image.asset("assets/images/pexels-5.jpg")),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Library"),
              ),
            ],
          ),
        ));
  }
}
