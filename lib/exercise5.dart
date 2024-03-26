import 'package:flutter/material.dart';
import './statelesswidget.dart';

void main() => runApp(const LAB1());

class LAB1 extends StatelessWidget {
  const LAB1({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: statelessWidget(title: "Scaffold widget"));
  }
}
