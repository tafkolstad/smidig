import 'package:flutter/material.dart';
import 'package:vy_test/severdigheter/Model/topPlaces_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vy_test/layout/colors.dart';

class DestinationCarousel2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 300.0,
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (BuildContext context, int index) {
              Destination destination = destinations[index];
              return GestureDetector(
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
                  
                    child: Stack(
                      children: <Widget>[
                        Hero(
                          tag: destination.imageUrl,
                          child: Container(
                            height: 140.0,
                            width: 160.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(destination.imageUrl),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(30.0)
                              )
                            ),
                          )
                        ),
                        
                        Positioned(
                          top: 115.0,
                          right: 20.0,
                          child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.circular(15.0),
                            child: Container(
                              height: 30.0,
                              width: 30.0,
                              child: Center(
                                child: Icon(Icons.favorite, color: Colors.red, size: 17.0)
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                color: Colors.white
                              ),
                            )
                          )
                        ),
                        Positioned(
                          top: 150.0,
                          left: 10.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('foodName',
                                style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                        fontSize: 14.0)),
                              SizedBox(height: 15.0),
                              Container(
                                width: 140.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text('price',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                              fontSize: 16.0)
                                    ),
                                    
                                    Text('price',
                                          style: TextStyle(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                              fontSize: 16.0)
                                    ),       
                                  ],
                                )
                              )
                            ],
                          )
                        )
                      ],
                    )
                  
                )
                );
            },
          ),
        ),
      ],
    );
  }
}





















