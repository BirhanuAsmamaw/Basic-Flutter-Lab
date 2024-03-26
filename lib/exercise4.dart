import 'package:flutter/material.dart';

void main() => runApp(const LAB1());

class LAB1 extends StatelessWidget {
  const LAB1({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: statelessWidget(title: "Scaffold widget"));
  }
}

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
        body: const Center(child: Text("exploring scaffold")));
  }
}