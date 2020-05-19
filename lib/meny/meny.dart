import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:vy_test/meny/meny_item.dart';


class Meny extends StatelessWidget {
  final List<MenyItem> menuItems = [
    MenyItem(
      menuItemImage: 'reisekart.png',
      menuItemText: 'Reisekart',
      routeName: 'reisekart',
    ),
    MenyItem(
      menuItemImage: 'stoppesteder.png',
      menuItemText: 'Stoppesteder',
      routeName: 'stoppesteder',
    ),
    MenyItem(
      menuItemImage: 'internett.png',
      menuItemText: 'Internett',
      routeName: 'internett',
    ),
    MenyItem(
      menuItemImage: 'varsler.png',
      menuItemText: 'Varsler',
      routeName: 'varsler',
    ),
    MenyItem(
      menuItemImage: 'severdigheter.png',
      menuItemText: 'Severdigheter',
      routeName: 'severdigheter',
    ),
    MenyItem(
      menuItemImage: 'vognoversikt.png',
      menuItemText: 'Vognoversikt',
      routeName: 'vognoversikt',
    ),
    MenyItem(
      menuItemImage: 'mat.png',
      menuItemText: 'Mat',
      routeName: 'mat',
    ),
    MenyItem(
      menuItemImage: 'betjening.png',
      menuItemText: 'Betjening',
      routeName: 'betjening',
    ),
    MenyItem(
      menuItemImage: 'billett.png',
      menuItemText: 'Billett',
      routeName: '',
    ),
    MenyItem(
      menuItemImage: 'vy.logo.final_primary.png',
      menuItemText: 'Om oss',
      routeName: 'omOss',
    ),
    MenyItem(
      menuItemImage: 'sove.png',
      menuItemText: 'Sove',
      routeName: 'sove',
    ),
    MenyItem(
      menuItemImage: 'dyr.png',
      menuItemText: 'Dyr',
      routeName: 'dyr',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',
      customBody: GridView.count(
        padding: EdgeInsets.symmetric(
          vertical: 25.0,
          horizontal: 25.0,
        ),
        crossAxisCount: 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        childAspectRatio: (5 / 3),
        children: menuItems,
      ),
    );
  }
}
