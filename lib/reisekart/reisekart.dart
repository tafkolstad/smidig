import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:vy_test/reisekart/stoppesteder/stoppested_stream.dart';
import 'package:vy_test/reisekart/stoppesteder/stoppested_tile.dart';
import 'package:vy_test/stoppesteder/model/Stoppesteder_Model.dart';
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
import 'package:vy_test/reisekart/varsel_button.dart';
import 'package:vy_test/reisekart/varsel_tile.dart';

class Reisekart extends StatefulWidget {

 
  @override
  _ReisekartState createState() => _ReisekartState();
}

class _ReisekartState extends State<Reisekart> {
  MapboxMapController mapController;

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
                  myLocationEnabled: true,
                  styleString:
                      'mapbox://styles/sindrejv/ckawdi85r0f6v1impfct49vq2',
                  onMapCreated: androidController,
                  initialCameraPosition: CameraPosition(
                      target: LatLng(59.9139, 10.7522), zoom: 8.0, tilt: 50),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             /* RaisedButton(
               child: Text('Trykk'),
                onPressed: (){
                
                   for(Destinasjon item in destinasjoner){
                    stoppestedStream.pushToDatabase(item.stoppested, item.tid);
                  }
                 
                }
              ),*/
              Expanded(child: StoppestedTile(),),
              Expanded(child: VarselButton()),

            ],
          ),
          VarselTile(),
          MenuButton(),
        ],
      ),
    );
  }
}
