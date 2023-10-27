import 'package:flutter/material.dart';
import 'package:togo_culture/pages/widgets/custom_card.dart';

class Vetements extends StatelessWidget {
  const Vetements({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWith = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWith,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.8),
              children: const [
                CustomCard(
                    nomArt: "Vêtement tradionnel homme",
                    nomAuteur: "",
                    imageUrl: "assets/images/vetements/vetementhomme.jpg"),
                CustomCard(
                    nomArt: "Vêtement tradionnel femme",
                    nomAuteur: "",
                    imageUrl: "assets/images/vetements/vetementfemme.jpg"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
