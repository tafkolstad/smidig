import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';
import 'severdighet.dart';
import 'severdighetliten.dart';

class Severdigheter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',
      customBody: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 0, 20),
            child: Text(
              'Severdigheter',
              style: TextStyle(
                  fontFamily: 'Segoe',
                  color: Color(0xff383E42),
                  fontWeight: FontWeight.w600,
                  fontSize: 30),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 10, 10),
                child: Text('Suggested top locations',
                    style: TextStyle(
                        fontFamily: 'Segoe',
                        fontWeight: FontWeight.w600,
                        color: Color(0xff7C847C),
                        fontSize: 13.5)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 15, 10),
                child: InkWell(
                  child: Text(
                    'View all > ',
                    style: TextStyle(
                        fontFamily: 'Segoe',
                        fontWeight: FontWeight.w600,
                        color: Color(0xff7C847C),
                        fontSize: 13.5),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/severdigheterviewall');
                  },
                ),
              ),
            ],
          ),
          new Expanded(
              child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Severdighet(
                  severdighetBilde: 'stranda.png',
                  severdighetOverskrift: 'Stranda',
                  severdighetTekst: 'Dette er ei bygd. Det er faktisk den flottaste bygda i helie verden. Dei lagar grandiosa her nemlig.',
                ),
                Severdighet(
                  severdighetBilde: 'fjord2.png',
                  severdighetOverskrift: 'Fjorden',
                  severdighetTekst: 'Fjord er en landform som i internasjonalt fagspråk (geologi, geografi) forklart som ei dyp, smal',
                ),
                Severdighet(
                  severdighetBilde: 'by.png',
                  severdighetOverskrift: 'By',
                  severdighetTekst: 'Dette er ein by',
                ),
              ],
            )
          ),

          Container(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
            padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Text('Neste oppkommende',
                style: TextStyle(
                    fontFamily: 'Segoe',
                    color: Color(0xff383E42),
                    fontWeight: FontWeight.w600,
                    fontSize: 25)),
          ),
          
          new Expanded(
              child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              SeverdighetLiten(
                severdighetLitenBilde: 'fjordliten.png',
                severdighetLitenOverskrift: 'Trolltunga',
                severdighetLitenTid: '6 min',
                severdighetLitenSide: 'Venstre side',
              ),
              SeverdighetLiten(
                severdighetLitenBilde: 'fjordliten2.png',
                severdighetLitenOverskrift: 'Vekje karr',
                severdighetLitenTid: '23 min',
                severdighetLitenSide: 'Høyre side',
              ),
              SeverdighetLiten(
                severdighetLitenBilde: 'fjordliten3.png',
                severdighetLitenOverskrift: 'Ulriken',
                severdighetLitenTid: '34 min',
                severdighetLitenSide: 'Høyre side',
              ),
              SeverdighetLiten(
                severdighetLitenBilde: 'fjordliten2.png',
                severdighetLitenOverskrift: 'Vekje karr',
                severdighetLitenTid: '48 min',
                severdighetLitenSide: 'Venstre side',
              ),
            ],
          )),
        ],
      ),
    );
  }
}
