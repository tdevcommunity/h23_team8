import 'package:flutter/material.dart';

class Musiques extends StatelessWidget {
  const Musiques({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWith = MediaQuery.of(context).size.width;
    return Container(
      width: screenWith,
      child: Text(
        "Musique",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
