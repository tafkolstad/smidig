import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'train_location.dart';
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
  TrainLocation trainLocation = TrainLocation();

  void androidController(MapboxMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    //trainLocation.fetchJson();
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
                  styleString: 'mapbox://styles/sindrejv/ckawdi85r0f6v1impfct49vq2',
                  onMapCreated: androidController,
                  initialCameraPosition:
                      CameraPosition(target: LatLng(59.9139, 10.7522), zoom: 8.0, tilt: 50),
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
