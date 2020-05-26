import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:vy_test/layout/colors.dart';

class Kontroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',
      customBody: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                bottom: 25.0,
              ),
              child: Text(
                'Kontroll',
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Raleway Medium',
                  color: textColorTitle,
                ),
              ),
            ),
            Image(
              alignment: Alignment.topRight,
              width: MediaQuery.of(context).size.width,
              image: AssetImage('assets/kontroll.png'),
            ),
          ],
        ),
      ),
    );
  }
}
