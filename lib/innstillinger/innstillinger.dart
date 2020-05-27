import 'package:flutter/material.dart';
import 'package:vy_test/innstillinger/innstilling.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:vy_test/layout/colors.dart';

class Innstillinger extends StatelessWidget {
  final List<Innstilling> innstillinger = [
    Innstilling(
      firstText: 'Wi-Fi',
      firstTextColor: Color(0xff74AEDC),
    ),
    Innstilling(
      firstText: 'Reisekart',
      firstTextColor: Color(0xff005668),
    ),
    Innstilling(
      firstText: 'Push-varsler',
      firstTextColor: Color(0xff707070),
    ),
    Innstilling(
      firstText: 'Varsler for ',
      firstTextColor: Color(0xff707070),
      secondText: 'forsinkelser',
      secondTextColor: vyColorOrange,
    ),
    Innstilling(
      firstText: 'Varsler for ',
      firstTextColor: Color(0xff707070),
      secondText: 'info',
      secondTextColor: infoColor,
    ),
    Innstilling(
      firstText: 'Varsler for ',
      firstTextColor: Color(0xff707070),
      secondText: 'tekniske feil',
      secondTextColor: tekniskFeilColor,
    ),
    Innstilling(
      firstText: 'Konstant sidebar',
      firstTextColor: Color(0xff707070),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',
      customBody: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Innstillinger',
              style: TextStyle(
                color: textColorTitle,
                fontFamily: 'Raleway Medium', // Does not exist in this project
                fontSize: 30,
              ),
            ),
          ),
          Column(
            children: innstillinger,
          ),
        ],
      ),
    );
  }
}
