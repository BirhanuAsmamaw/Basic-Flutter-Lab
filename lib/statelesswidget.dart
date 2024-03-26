import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

// ignore: camel_case_types
class statelessWidget extends StatelessWidget {
  const statelessWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: const Center(child: Text("Exploring scaffold",
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 48))));
  }
}