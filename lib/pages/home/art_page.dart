import 'package:flutter/material.dart';

class ArtPage extends StatelessWidget {
  const ArtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        Center(
          child: Text(
            "ART",
            style: TextStyle(color: Colors.black, fontSize: 45),
          ),
        )
      ],
    ));
  }
}
