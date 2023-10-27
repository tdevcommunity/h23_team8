import 'package:flutter/material.dart';

class ArtBox extends StatelessWidget {
  const ArtBox(
      {super.key,
      required this.nomArt,
      required this.nomAuteur,
      required this.imageUrl});

  final String nomArt, nomAuteur, imageUrl;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWith = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(
            image: AssetImage(
              imageUrl,
            ),
            fit: BoxFit.fill),
      ),
      height: screenHeight / 3,
      width: screenWith,
      child: Stack(
        children: [
          Positioned(
              bottom: 40,
              left: 10,
              child: Text(
                nomAuteur,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              )),
          Positioned(
              bottom: 15,
              left: 10,
              child: Text(
                nomArt,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ))
        ],
      ),
    );
  }
}
