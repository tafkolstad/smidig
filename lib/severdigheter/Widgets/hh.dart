import 'package:flutter/material.dart';
import 'package:vy_test/severdigheter/Model/topPlaces_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vy_test/layout/colors.dart';

class DestinationCarousel2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Top Destinations',
                style: TextStyle(
                  fontSize: 16.0,
                  color: textColorMenu,
                  fontFamily: 'Segoe UI',
                  letterSpacing: 0.3,
                ),
              ),
              GestureDetector(
                onTap: () => print('view all'),
                child: Text(
                  'View all',
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
          height: 300.0,
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (BuildContext context, int index) {
              Destination destination = destinations[index];
              return GestureDetector(
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 160.0,
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
                                  height: 150.0,
                                  width: 160.0,
                                  image: AssetImage(destination.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 15.0,
                              bottom: 30.0,
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
                                        destination.place,
                                        style: TextStyle(
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
                          height: 130.0,
                          width: 160.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0)
                              )
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(15, 5, 10, 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  destination.place,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Segoe UI',
                                    letterSpacing: 0.2,
                                  ),
                                ),
                                SizedBox(height: 3.0,),
                                Text(
                                  destination.description,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 3,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Segoe UI',
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




















