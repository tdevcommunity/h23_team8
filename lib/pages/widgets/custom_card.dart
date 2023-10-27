import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {super.key,
      required this.nomArt,
      required this.nomAuteur,
      required this.imageUrl});
  final String nomArt, nomAuteur, imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage(
                    imageUrl,
                  ),
                  fit: BoxFit.fill),
            ),
          ),
        ),
        Text(
          "$nomAuteur $nomArt",
          style: const TextStyle(color: Colors.black),
        )
      ],
    );
  }
}
