import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';

class OmOss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',
      customBody: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Text(
            'Om oss',
            style: TextStyle(
              color: Color(0xff383E42),
              fontFamily: 'Raleway', // Does not exist in this project
              fontSize: 30,
            ),
          ),
        ),
      ]),
    );
  }
}
