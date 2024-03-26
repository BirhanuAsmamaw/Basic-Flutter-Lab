import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';

void main() => runApp(const LAB1());

// ignore: camel_case_types
class LAB1 extends StatelessWidget {
  const LAB1({Key? key}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Scaffold Widget"),
        ),
        body: const Center(child: Image(image: AssetImage('android/assets/new_tutor.webp'))));
  }
}



//entering an image