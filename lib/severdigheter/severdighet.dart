import 'package:flutter/material.dart';

class Severdighet extends StatelessWidget {
  final String severdighetOverskrift;
  final String severdighetBilde;
  final String severdighetTekst;
  Severdighet(
      {this.severdighetOverskrift,
      this.severdighetBilde,
      this.severdighetTekst});

  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children: [
        Container(
          width: 280,
          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Image(
            image: AssetImage("assets/$severdighetBilde"),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 1,
                )
              ]),
          width: 220,
          height: 75,
          margin: EdgeInsets.fromLTRB(50, 145, 0, 0),
          padding: EdgeInsets.fromLTRB(17, 8, 14, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 3),
              child: Text(severdighetOverskrift, 
                style: TextStyle(
                fontFamily: "Segoe UI",
                fontWeight: FontWeight.w600,
                color: Color(0xff3B434D),
                fontSize: 15),
              ),
            ),
            Text(severdighetTekst, 
              style: TextStyle(
              fontFamily: "Segoe UI",
              fontWeight: FontWeight.normal,
              color: Color(0xff7C847C),
              fontSize: 11),
            ),
            ]
            ),
          
          
        )
      ],
    );
  }
}
