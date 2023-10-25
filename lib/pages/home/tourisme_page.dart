import 'package:flutter/material.dart';

class TourismePage extends StatelessWidget {
  const TourismePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text(
            "Tourisme",
            style: TextStyle(color: Colors.black, fontSize: 45),
          )
        ],
      ),
    );
  }
}
