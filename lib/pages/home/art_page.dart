import 'package:flutter/material.dart';
import 'package:togo_culture/pages/home/architecture.dart';
import 'package:togo_culture/pages/home/musiques.dart';
import 'package:togo_culture/pages/home/oeuvres.dart';
import 'package:togo_culture/pages/home/vetements.dart';
import 'package:togo_culture/pages/widgets/art_box.dart';

class ArtPage extends StatefulWidget {
  const ArtPage({super.key});

  @override
  State<ArtPage> createState() => _ArtPageState();
}

class _ArtPageState extends State<ArtPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    double screenHeight = MediaQuery.of(context).size.height;
    // double screenWith = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
        height: screenHeight,
        child: Column(
          children: [
            const ArtBox(
                nomArt: "Vaudou",
                nomAuteur: "Agagli Kossi",
                imageUrl: "assets/images/arts/vaudou.jpg"),
            TabBar.secondary(
                controller: tabController,
                isScrollable: true,
                tabs: const <Widget>[
                  Tab(
                    text: "Oeuvre",
                  ),
                  Tab(
                    text: "Musique",
                  ),
                  Tab(
                    text: "Vêtement",
                  ),
                  Tab(
                    text: "Architecture",
                  ),
                ]),
            Expanded(
              child: TabBarView(
                  controller: tabController,
                  children: const <Widget>[
                    Oeuvres(),
                    Musiques(),
                    Vetements(),
                    Architectures()
                  ]),
            )
          ],
        ),
      ),
    ));
  }
}
