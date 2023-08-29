import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return const TabBar(
      dividerColor: Colors.transparent,
      tabs: <Widget>[
        Tab(
          text: 'Flights',
          icon: Icon(Icons.flight),
        ),
        Tab(
          text: 'Trips',
          icon: Icon(Icons.luggage),
        ),
        Tab(
          text: 'Explore',
          icon: Icon(Icons.explore),
        ),
      ],
    );
  }
}
