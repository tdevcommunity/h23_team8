import 'package:flutter/material.dart';
import 'package:togo_culture/pages/cultural_event_page.dart';
import 'package:togo_culture/pages/history_page.dart';
import 'package:togo_culture/pages/home/home_body_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: <Widget>[
        const HomeBody(),
        const HistoryPage(),
        const CulturalEventPage()
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(icon: Icon(Icons.home), label: "Acceuil"),
            NavigationDestination(
                icon: Icon(Icons.timeline), label: "Histoire"),
            NavigationDestination(
                icon: Icon(Icons.celebration), label: "Évenements")
          ]),
    );
  }
}
