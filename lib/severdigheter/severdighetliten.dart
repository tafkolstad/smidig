import 'package:flutter/material.dart';

class SeverdighetLiten extends StatelessWidget {
  final String severdighetLitenOverskrift;
  final String severdighetLitenBilde;
  final String severdighetLitenTid;
  final String severdighetLitenSide;
  SeverdighetLiten(
      {this.severdighetLitenOverskrift,
      this.severdighetLitenBilde,
      this.severdighetLitenTid,
      this.severdighetLitenSide});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 150,
          margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
          padding: EdgeInsets.all(0),
          child: Image(
            image: AssetImage('assets/$severdighetLitenBilde'),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5)),
              color: Colors.white,
              boxShadow: [
//                BoxShadow(
//                  color: Colors.grey,
//                  spreadRadius: 1,
//                  blurRadius: 1,
//                )
              ]),
          width: 134,
          margin: EdgeInsets.fromLTRB(28, 142, 0, 45),
          child: Column(
            children: <Widget>[
              Text(
                severdighetLitenOverskrift,
                style: TextStyle(
                    fontFamily: 'Segoe',
                    fontWeight: FontWeight.w600,
                    color: Color(0xff3B434D),
                    fontSize: 15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(severdighetLitenTid,
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff7C847C),
                          fontSize: 13)),
                  Text(severdighetLitenSide,
                      style: TextStyle(
                          fontFamily: 'Segoe',
                          fontWeight: FontWeight.w600,
                          color: Color(0xff7C847C),
                          fontSize: 13)
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
