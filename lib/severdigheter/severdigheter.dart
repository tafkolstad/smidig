import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:vy_test/severdigheter/Widgets/topPlaces_karusell.dart';
import 'package:vy_test/severdigheter/Widgets/hh.dart';

class Severdigheter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',
      customBody: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
            child: Text(
              'Severdigheter',
              style: TextStyle(
                  fontFamily: 'Segoe UI',
                  color: Color(0xff383E42),
                  fontWeight: FontWeight.w600,
                  fontSize: 30),
            ),
          ),
          SizedBox(height: 20.0),
          DestinationCarousel(),
          SizedBox(height: 20.0),
          DestinationCarousel2(),
      
        ],
      ),
    );
  }
}
