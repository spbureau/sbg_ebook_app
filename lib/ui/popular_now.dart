import 'package:flutter/material.dart';

class PopularNowScreen extends StatefulWidget {
  const PopularNowScreen({super.key});

  @override
  State<PopularNowScreen> createState() => _PopularNowScreenState();
}

class _PopularNowScreenState extends State<PopularNowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Popular Now"),
        elevation: 0,
      ),
    );
  }
}
