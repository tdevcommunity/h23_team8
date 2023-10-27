import 'package:flutter/material.dart';
import 'package:togo_culture/pages/widgets/custom_card.dart';

class Oeuvres extends StatelessWidget {
  const Oeuvres({super.key});

  @override
  Widget build(BuildContext context) {
    //double screenHeight = MediaQuery.of(context).size.height;
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
                    nomArt: "Mosaique",
                    nomAuteur: "Paul Ahyi",
                    imageUrl: "assets/images/arts/mosaique.png"),
                CustomCard(
                    nomArt: "Vaudou",
                    nomAuteur: "Agagli Kossi",
                    imageUrl: "assets/images/arts/vaudou.jpg"),
                CustomCard(
                    nomArt: "Letiro",
                    nomAuteur: "Pierre Segoh",
                    imageUrl: "assets/images/arts/letiro.jpg"),
                CustomCard(
                    nomArt: "Afi et Koffi",
                    nomAuteur: "Tesprit Folikossi TETE",
                    imageUrl: "assets/images/arts/afikoffi.jpg")
              ],
            ),
          )
        ],
      ),
    );
  }
}
