import 'package:flutter/material.dart';
import 'package:togo_culture/main.dart';
import 'package:togo_culture/pages/home/art_page.dart';
import 'package:togo_culture/pages/home/bibliotheque_page.dart';
import 'package:togo_culture/pages/home/tourisme_page.dart';
import 'package:togo_culture/pages/widgets/filter_box.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.15),
        appBar: AppBar(
          title: const Text(
            "Togo Culture",
            // style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          // backgroundColor: Theme.of(context)
          //     .colorScheme
          //     .primary
          //     .withOpacity(0.80), //defaultTheme.primaryColor,

          bottom: TabBar(
              controller: tabController,
              isScrollable: true,
              indicator: BoxDecoration(
                  color: defaultColorScheme.primary,
                  borderRadius: BorderRadius.circular(30)),
              dividerColor: Colors.transparent,
              tabs: const <Widget>[
                FilterBox(filterIcon: Icons.art_track, filterText: "Art"),
                FilterBox(
                    filterIcon: Icons.location_city, filterText: "Tourisme"),
                FilterBox(
                    filterIcon: Icons.local_library,
                    filterText: "Bibliothèque"),
              ]),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    size: 30,
                    // color: Colors.white,
                  )),
            )
          ],
        ),
        body: TabBarView(controller: tabController, children: const <Widget>[
          ArtPage(),
          TourismePage(),
          BibiothequePage()
        ]));
  }
}
