import 'package:flutter/material.dart';

void main() => runApp(const LAB1());

class LAB1 extends StatelessWidget {
  const LAB1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Text('Scaffold widget')),
      body: const Center(
        child: Text('Exploring widget'),
      ),
    ));
  }
}







//entering scaffold