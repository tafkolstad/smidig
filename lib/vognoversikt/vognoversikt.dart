import 'package:flutter/material.dart';
import 'package:vy_test/layout/colors.dart';
import 'package:vy_test/layout/layout.dart';

String seteNr = "H26";
String vognNr = "H26";

class Vognoversikt extends StatefulWidget {
  @override
  _VognoversiktState createState() => _VognoversiktState();
}

class _VognoversiktState extends State<Vognoversikt> {
  int _selectedIndex = 0;
  List<String> _vonger = [
    "Vogn 1",
    "Vogn 2",
    "Vogn 3",
    "Vogn 4",
    "Vogn 5",
    "Vogn 6",
  ];

  List<String> _vongerimg = [
    "assets/Vogn_5.png",
    "assets/Vogn_2.png",
    "assets/Vogn_5.png",
    "assets/Vogn_4.png",
    "assets/Vogn_5.png",
    "assets/Vogn_6.png",
  ];

  Widget _buildVogn(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
        child: Text(
          _vonger[index],
          style: TextStyle(
            fontSize: 23.0,
            color: _selectedIndex == index ? vyColorGreen : Color(0xFF7b808a),
            fontWeight:
                _selectedIndex == index ? FontWeight.w700 : FontWeight.w400,
            letterSpacing: 0.3,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',
      customBody: Container(
        child: ListView(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 120.0),
                child: Text(
                  'Vognoversikt',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.8)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 20.0),
                        text: "Ditt sete: ",
                        children: <TextSpan>[
                          TextSpan(
                              text: seteNr,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 20.0),
                        text: "Din vogn: ",
                        children: <TextSpan>[
                          TextSpan(
                              text: vognNr,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 420,
                          child: Image.asset(_vongerimg[_selectedIndex]),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _vonger
                          .asMap()
                          .entries
                          .map(
                            (MapEntry map) => _buildVogn(map.key),
                          )
                          .toList(),
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
