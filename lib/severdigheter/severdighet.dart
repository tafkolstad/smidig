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
          width: 250,
          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
          padding: EdgeInsets.all(0),
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
          width: 200,
          margin: EdgeInsets.fromLTRB(45, 145, 0, 0),
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          child: RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
                text: severdighetOverskrift,
                style: TextStyle(
                    fontFamily: "Segoe",
                    fontWeight: FontWeight.w600,
                    color: Color(0xff3B434D),
                    fontSize: 15),
                children: <TextSpan>[
                  TextSpan(
                      text: "\n$severdighetTekst",
                      style: TextStyle(
                          color: Color(0xff7C847C),
                          fontWeight: FontWeight.normal,
                          fontSize: 11)),
                ]),
          ),
        )
      ],
    );
  }
}
