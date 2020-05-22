import 'dart:collection';


import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:location/location.dart';
//import 'dart:io' show Platform;
/*
void checkPlatform(){


 if(Platform.isIOS){
   urlTemplate: 'www.mapbox.....';
 } else if(Platform.isAndroid){
 }
}
*/

class Reisekart extends StatelessWidget {
  MapboxMapController mapController;


  void androidController(MapboxMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',
      customBody: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                child: MapboxMap(
                  onMapCreated: androidController,
                  initialCameraPosition: CameraPosition(target: LatLng(0.0, 0.0)),
                ),
              ),
            ],
          ),
          RaisedButton(
            child: Text('Meny'),
            onPressed: () {
              Navigator.pushNamed(context, '/meny');
            },
          ),
        ],
      ),
    );
  }
}
