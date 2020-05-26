import 'package:flutter/material.dart';
import 'package:vy_test/layout/colors.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:vy_test/meny/meny_item.dart';

class Reisekart extends StatelessWidget {
  static const TextStyle _textStyle = TextStyle(
    fontFamily: 'Raleway',
    fontSize: 12.0,
    color: textColorMenu,
  );

  @override
  Widget build(BuildContext context) {
  final _edgePadding = MediaQuery.of(context).size.width * 0.03;
  final _menuButtonPadding = MediaQuery.of(context).size.width * 0.1;
  final _menuButtonHeight = MediaQuery.of(context).size.height * 0.05;

    return Layout(
      appBarText: 'Min Reise',

      // Sidebar
      customDrawer: Container(
        width: 120.0,
        color: Colors.transparent,
        child: ListView(
          padding: EdgeInsets.only(
            right: _edgePadding,
          ),
          shrinkWrap: true,
          children: <Widget>[
            MenyItem(
              menuItemImage: 'mat.png',
              menuItemText: 'Mat',
              routeName: 'mat',
              textStyle: _textStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            MenyItem(
              menuItemImage: 'vognoversikt.png',
              menuItemText: 'Vognoversikt',
              routeName: 'vognoversikt',
              textStyle: _textStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            MenyItem(
              menuItemImage: 'severdigheter.png',
              menuItemText: 'Severdigheter',
              routeName: 'severdigheter',
              textStyle: _textStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            MenyItem(
              menuItemImage: 'betjening.png',
              menuItemText: 'Betjening',
              routeName: 'betjening',
              textStyle: _textStyle,
            ),
            SizedBox(
              height: 10.0,
            ),
            MenyItem(
              menuItemImage: 'mer_info.png',
              menuItemText: 'Mer info',
              routeName: 'meny',
              textStyle: _textStyle,
            ),
          ],
        ),
      ),

      // Menu button
      customBody: Container(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(
            bottom: _edgePadding,
          ),
          child: ButtonTheme(
            padding: EdgeInsets.symmetric(
              horizontal: _menuButtonPadding,
            ),
            height: _menuButtonHeight,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)),
            child: Builder(
              builder: (context) {
                return RaisedButton(
                  color: Colors.white,
                  child: Text(
                    'Meny',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 21.0,
                      fontWeight: FontWeight.w600,
                      color: vyColorDarkGreen,
                    ),
                  ),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
