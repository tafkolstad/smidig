import 'package:flutter/material.dart';
import 'package:location/location.dart';
//import 'package:permission_handler/permission_handler.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:vy_test/reisekart/stoppesteder/stoppested_button.dart';
import 'package:vy_test/reisekart/stoppesteder/stoppested_stream.dart';
import 'package:vy_test/reisekart/meny_button.dart';
import 'package:vy_test/reisekart/sidebar.dart';
import 'package:vy_test/reisekart/varsler/varsel_button.dart';

class Reisekart extends StatefulWidget {
  @override
  _ReisekartState createState() => _ReisekartState();
}

class _ReisekartState extends State<Reisekart> {
   StoppestedStream stoppestedStream = StoppestedStream();
  MapboxMapController mapController;

  void androidController(MapboxMapController controller) {
    mapController = controller;
  }

  void getPermission() async{
    final location = Location();
    final hasPermissions = await location.hasPermission();

    if (hasPermissions != PermissionStatus.granted) {
      await location.requestPermission();
    }
  }

  @override
  Widget build(BuildContext context) {

    getPermission();

<<<<<<< HEAD
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
                  // myLocationEnabled: true,
                  styleString:
                      'mapbox://styles/sindrejv/ckawdi85r0f6v1impfct49vq2',
                  onMapCreated: androidController,
                  trackCameraPosition: true,
                  initialCameraPosition: CameraPosition(
                      target: LatLng(59.9139, 10.7522), zoom: 13.0, tilt: 50),
=======
    return WillPopScope(
          onWillPop: () async{
            Navigator.of(context).pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
            return true;          
          },
          child: Layout(
        appBarText: 'Min Reise',

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
                    trackCameraPosition: true,
                    initialCameraPosition: CameraPosition(
                        target: LatLng(59.9139, 10.7522), zoom: 13.0, tilt: 50),
                  ),
>>>>>>> 5d0fa178937fd030e3ce65b6824f1f358ed4c55b
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(child: StoppestedButton(),),
                Expanded(child: VarselButton()),
              ],
            ),
            MenuButton(),
          ],
        ),
      ),
    );
  }
}