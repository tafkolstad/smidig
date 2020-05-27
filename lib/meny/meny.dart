import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:vy_test/meny/meny_item.dart';

class Meny extends StatelessWidget {
  static const TextStyle _textStyle = TextStyle(
    fontFamily: 'Raleway',
    fontSize: 20.0,
    color: Color(0xff5B5B5B),
  );

  @override
  Widget build(BuildContext context) {
    final _bottomPadding = MediaQuery.of(context).size.height * 0.02;

    final List<MenyItem> menuItems = [
    MenyItem(
      menuItemImage: 'reisekart.png',
      menuItemText: 'Reisekart',
      routeName: 'reisekart',
      textStyle: _textStyle,
      bottomPadding: _bottomPadding,
    ),
    MenyItem(
      menuItemImage: 'stoppesteder.png',
      menuItemText: 'Stoppesteder',
      routeName: 'stoppesteder',
      textStyle: _textStyle,
      bottomPadding: _bottomPadding,
    ),
    MenyItem(
      menuItemImage: 'internett.png',
      menuItemText: 'Internett',
      routeName: 'internett',
      textStyle: _textStyle,
      bottomPadding: _bottomPadding,
    ),
    MenyItem(
      menuItemImage: 'varsler.png',
      menuItemText: 'Varsler',
      routeName: 'varsler',
      textStyle: _textStyle,
      bottomPadding: _bottomPadding,
    ),
    MenyItem(
      menuItemImage: 'severdigheter.png',
      menuItemText: 'Severdigheter',
      routeName: 'severdigheter',
      textStyle: _textStyle,
      bottomPadding: _bottomPadding,
    ),
    MenyItem(
      menuItemImage: 'vognoversikt.png',
      menuItemText: 'Vognoversikt',
      routeName: 'vognoversikt',
      textStyle: _textStyle,
      bottomPadding: _bottomPadding,
    ),
    MenyItem(
      menuItemImage: 'mat.png',
      menuItemText: 'Mat',
      routeName: 'mat',
      textStyle: _textStyle,
      bottomPadding: _bottomPadding,
    ),
    MenyItem(
      menuItemImage: 'betjening.png',
      menuItemText: 'Betjening',
      routeName: 'betjening',
      textStyle: _textStyle,
      bottomPadding: _bottomPadding,
    ),
    MenyItem(
      menuItemImage: 'billett.png',
      menuItemText: 'Kontroll',
      routeName: 'kontroll',
      textStyle: _textStyle,
      bottomPadding: _bottomPadding,
    ),
    MenyItem(
      menuItemImage: 'vy.logo.final_primary.png',
      menuItemText: 'Om oss',
      routeName: 'omOss',
      textStyle: _textStyle,
      bottomPadding: _bottomPadding,
    ),
    MenyItem(
      menuItemImage: 'sove.png',
      menuItemText: 'Sove',
      routeName: 'sove',
      textStyle: _textStyle,
      bottomPadding: _bottomPadding,
    ),
    MenyItem(
      menuItemImage: 'dyr.png',
      menuItemText: 'Dyr',
      routeName: 'dyr',
      textStyle: _textStyle,
      bottomPadding: _bottomPadding,
    ),
    MenyItem(
      menuItemImage: 'faq.png',
      menuItemText: 'FAQ',
      routeName: 'faq',
      textStyle: _textStyle,
      bottomPadding: _bottomPadding,
    ),
  ];

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
