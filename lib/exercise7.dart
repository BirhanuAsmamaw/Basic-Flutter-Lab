import 'package:flutter/material.dart';
import 'Package:google_fonts/google_fonts.dart';

void main() => runApp(const LAB1());

class LAB1 extends StatelessWidget {
  const LAB1({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text("First Material app", style: GoogleFonts.lato(fontSize: 40)),
    );
  }
}






//using google font