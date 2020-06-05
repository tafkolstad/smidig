import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:location/location.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:vy_test/layout/colors.dart';
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
                    // myLocationEnabled: true,
                    styleString:
                        'mapbox://styles/levare/ckb0ja1pe0tcc1ipfyiu0w4ri',
                    onMapCreated: androidController,
                    myLocationTrackingMode: MyLocationTrackingMode.TrackingGPS,
                    trackCameraPosition: true,
                    initialCameraPosition: CameraPosition(
                        target: LatLng(59.9139, 10.7522), zoom: 13.0, tilt: 50),
                  ),
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
            Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
              child: ButtonTheme(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                padding: EdgeInsets.all(2),
                minWidth: 36,
                child:RaisedButton(
                      color: Colors.white,
                      elevation: 5,
                      child: Icon(
                        OMIcons.gpsFixed,
                        size: 18,
                        color: textColorTitle,
                      ),
                      onPressed: () {
                        
                      }
                    ),
              ),
            ),
            MenuButton(),
          ],
        ),
      ),
    );
  }
}