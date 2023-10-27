import 'package:flutter/material.dart';
import 'package:togo_culture/pages/widgets/custom_card.dart';

class Architectures extends StatelessWidget {
  const Architectures({super.key});

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
                    nomArt: "Maison Taberma",
                    nomAuteur: "",
                    imageUrl: "assets/images/architectures/maison-taberma.jpg"),
                CustomCard(
                    nomArt: "Maison d'argile Tamberma",
                    nomAuteur: "",
                    imageUrl:
                        "assets/images/architectures/maisons-d-argile-les-tatas-tamberma.jpg"),
                CustomCard(
                    nomArt: "Village de peuple Tamberma",
                    nomAuteur: "",
                    imageUrl:
                        "assets/images/architectures/tammari-traditionnel-village-de-peuple-tamberma.jpg"),
                CustomCard(
                    nomArt: "Village traditionnel Ewe",
                    nomAuteur: "",
                    imageUrl:
                        "assets/images/architectures/village-traditionnel-des-ewe.jpg")
              ],
            ),
          )
        ],
      ),
    );
  }
}
