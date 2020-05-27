import 'package:flutter/material.dart';
import 'package:vy_test/layout/colors.dart';
import 'package:vy_test/meny/meny_item.dart';

class Sidebar extends StatelessWidget {
  static const TextStyle _textStyle = TextStyle(
    fontFamily: 'Raleway',
    fontSize: 12.0,
    color: textColorMenu,
  );

  @override
  Widget build(BuildContext context) {
    final _edgePadding = MediaQuery.of(context).size.width * 0.03;

    final SizedBox _spacing =
        SizedBox(height: MediaQuery.of(context).size.height * 0.01);

    final List<Widget> _menu = [
      MenyItem(
        menuItemImage: 'mat.png',
        menuItemText: 'Mat',
        routeName: 'mat',
        textStyle: _textStyle,
      ),
      _spacing,
      MenyItem(
        menuItemImage: 'vognoversikt.png',
        menuItemText: 'Vognoversikt',
        routeName: 'vognoversikt',
        textStyle: _textStyle,
      ),
      _spacing,
      MenyItem(
        menuItemImage: 'severdigheter.png',
        menuItemText: 'Severdigheter',
        routeName: 'severdigheter',
        textStyle: _textStyle,
      ),
      _spacing,
      MenyItem(
        menuItemImage: 'betjening.png',
        menuItemText: 'Betjening',
        routeName: 'betjening',
        textStyle: _textStyle,
      ),
      _spacing,
      MenyItem(
        menuItemImage: 'mer_info.png',
        menuItemText: 'Mer info',
        routeName: 'meny',
        textStyle: _textStyle,
      ),
    ];

    return Container(
      width: 120.0,
      color: Colors.transparent,
      child: ListView(
        padding: EdgeInsets.only(
          right: _edgePadding,
        ),
        shrinkWrap: true,
        children: _menu,
      ),
    );
  }
}
