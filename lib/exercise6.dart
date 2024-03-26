import 'package:flutter/material.dart';

void main() => runApp(const LAB1());

class LAB1 extends StatelessWidget {
  const LAB1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Center(
      child: Container(
          margin: const EdgeInsets.all(10.0),
          color: Colors.amber,
          width: 48.0,
          height: 48.0),
    ));
  }
}




//creating centered container