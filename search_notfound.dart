import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchNotFound extends StatelessWidget {
  const SearchNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("DATA NOT FOUND")),
        ),
      ),
    );
  }
}
