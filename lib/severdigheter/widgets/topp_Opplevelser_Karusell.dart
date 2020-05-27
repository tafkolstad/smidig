import 'package:flutter/material.dart';
import 'package:vy_test/severdigheter/model/topp_Opplevelser_Karusell_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vy_test/layout/colors.dart';

class ToppOpplevelserKarusell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Topp 10 opplevelser',
                style: TextStyle(
                  fontSize: 18.0,
                  color: textColorMenu,
                  fontFamily: 'Segoe UI',
                  letterSpacing: 0.3,
                ),
              ),
              GestureDetector(
                onTap: () => print('Viser alle'),
                child: Text(
                  'Vis alle',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 13.0,
                    fontFamily: 'Segoe UI',
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 280.0,
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (BuildContext context, int index) {
              Destination destination = destinations[index];
              return GestureDetector(
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 250.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Container(
                        child: Stack(
                          children: <Widget>[
                            Hero(
                              tag: destination.imageUrl,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image(
                                  height: 180.0,
                                  width: 260.0,
                                  image: AssetImage(destination.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 15.0,
                              bottom: 35.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.locationArrow,
                                        size: 14.0,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 8.0),
                                      Text(
                                        destination.plass,
                                        style: TextStyle(
                                          fontSize: 18.0,
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
                        bottom: 5.0,
                        child: Container(
                          height: 100.0,
                          width: 230.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 5, 10, 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  destination.title,
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.2,
                                  ),
                                ),
                                SizedBox(height: 3.0,),
                                Text(
                                  destination.beskrivelse,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
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