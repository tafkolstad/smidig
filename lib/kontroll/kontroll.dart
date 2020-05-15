import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';

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
                  fontWeight: FontWeight.w500,
                  fontSize: 30.0,
                  fontFamily: 'Raleway', // Does not exist in this project
                  color: Color(0xFF4E4E4E),
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
