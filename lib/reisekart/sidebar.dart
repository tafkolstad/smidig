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
    final _bottomPadding = MediaQuery.of(context).size.height * 0.015;

    final SizedBox _spacing =
        SizedBox(height: MediaQuery.of(context).size.height * 0.011);

    final List<Widget> _menu = [
      MenyItem(
        menuItemImage: 'mat.png',
        menuItemText: 'Mat',
        sidebarImageSize: 25,
        routeName: 'mat',
        textStyle: _textStyle,
      bottomPadding: _bottomPadding,
      ),
      _spacing,
      MenyItem(
        menuItemImage: 'vognoversikt.png',
        menuItemText: 'Vognoversikt',
        sidebarImageSize: 25,
        routeName: 'vognoversikt',
        textStyle: _textStyle,
      bottomPadding: _bottomPadding,
      ),
      _spacing,
      MenyItem(
        menuItemImage: 'severdigheter.png',
        menuItemText: 'Severdigheter',
        sidebarImageSize: 38,
        routeName: 'severdigheter',
        textStyle: _textStyle,
      bottomPadding: _bottomPadding,
      ),
      _spacing,
      MenyItem(
        menuItemImage: 'betjening.png',
        menuItemText: 'Betjening',
        sidebarImageSize: 16,
        routeName: 'betjening',
        textStyle: _textStyle,
      bottomPadding: _bottomPadding,
      ),
      _spacing,
      MenyItem(
        menuItemImage: 'mer_info.png',
        menuItemText: 'Mer info',
        sidebarImageSize: 24,
        routeName: 'meny',
        textStyle: _textStyle,
      bottomPadding: MediaQuery.of(context).size.height * 0.015,
      ),
    ];

    return Container(
      width: 110.0,
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
