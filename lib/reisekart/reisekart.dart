import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:vy_test/meny/meny_item.dart';

class Reisekart extends StatelessWidget {
  static const TextStyle _textStyle = TextStyle(
    fontFamily: 'Raleway',
    fontSize: 11.0,
    color: Color(0xff616161),
  );

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',

      // Sidebar
      customDrawer: Container(
        width: 120.0,
        color: Colors.transparent,
        child: ListView(
          padding: EdgeInsets.only(
            right: 15.0,
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
          padding: const EdgeInsets.only(
            bottom: 25,
          ),
          child: ButtonTheme(
            padding: const EdgeInsets.symmetric(
              horizontal: 40.0,
            ),
            height: 35.0,
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
                      color: Color(0xff00685E),
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
