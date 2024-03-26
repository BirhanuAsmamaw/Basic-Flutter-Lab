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
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Image.asset('android/assets/new_tutor.webp'),
        Image.asset('android/assets/w.webp'),
        Image.asset(' android/assets/bire.jpg')
      ]),
    );
  }
}


//entering images on row