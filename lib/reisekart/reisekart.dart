import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
//import 'dart:io' show Platform;
/*
void checkPlatform(){


 if(Platform.isIOS){
   urlTemplate: 'www.mapbox.....';
 } else if(Platform.isAndroid){
 }
}
*/
import 'package:vy_test/reisekart/meny_button.dart';
import 'package:vy_test/reisekart/sidebar.dart';
import 'package:vy_test/reisekart/varsel_tile.dart';

class Reisekart extends StatelessWidget {
  MapboxMapController mapController;

  void androidController(MapboxMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',
      appBarButtons: false,
      customDrawer: Sidebar(),
      customBody: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                child: MapboxMap(
                  onMapCreated: androidController,
                  initialCameraPosition:
                      CameraPosition(target: LatLng(59.9139, 10.7522), zoom: 7.0),
                ),
              ),
            ],
          ),
          
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: VarselTile()),
              Expanded(child: VarselTile(),),
            ],
          ),
          MenuButton(),
        ],
      ),
    );
  }
}
