import 'package:flutter/material.dart';
import 'package:vy_test/severdigheter/model/neste_oppkommende_Karusell_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vy_test/layout/colors.dart';

class NesteoppkommendeKarusell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[Padding(
          padding: EdgeInsets.fromLTRB(30, 0, 20, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Neste oppkommende',
                style: TextStyle(
                  fontSize: 20.0,
                  color: textColorMenu,
                  fontFamily: 'Segoe UI',
                  letterSpacing: 0.3,
                ),
              ),
              GestureDetector(
                onTap: () => print('view all'),
                child: Text(
                  'Vis alle',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 13.0,
                    fontFamily: 'Segoe UI',
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 215.0,
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: oppkommer.length,
            itemBuilder: (BuildContext context, int index) {
              Oppkommende oppkommende = oppkommer[index];
              return GestureDetector(
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 130.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(
                        child: Stack(
                          children: <Widget>[
                            Hero(
                              tag: oppkommende.minutterTil,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image(
                                  height: 120.0,
                                  width: 160.0,
                                  image: AssetImage('assets/bilder/severdigheter/${oppkommende.imageUrl}'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 10.0,
                              bottom: 21.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.locationArrow,
                                        size: 10.0,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 8.0),
                                      Text(
                                        oppkommende.plass,
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 25.0,
                        child: Container(
                          height: 65.0,
                          width: 130.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0)
                              )
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  oppkommende.title,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.2,
                                  ),
                                ),
                                SizedBox(height: 5.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      oppkommende.vongside,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: textColorMenu,
                                        fontFamily: 'Segoe UI',
                                        letterSpacing: 0.3,
                                      ),
                                    ),
                                    Text(
                                      oppkommende.minutterTil,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: textColorMenu,
                                        fontFamily: 'Segoe UI',
                                        letterSpacing: 0.3,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}




















