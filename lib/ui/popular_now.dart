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
