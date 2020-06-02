import 'package:flutter/material.dart';
import 'package:vy_test/layout/colors.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:wifi_configuration/wifi_configuration.dart';

// AUTOMATIC WIFI CONNECTION DOES NOT WORK ON IOS, because of Apple

class Internett extends StatelessWidget {
  Future<bool> _onBackButton() {
    return Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    final _imagePadding = MediaQuery.of(context).size.height * 0.015;
    final _horizontalButtonPadding = MediaQuery.of(context).size.width * 0.15;
    final _verticalButtonPadding = MediaQuery.of(context).size.height * 0.04;

    Future attemptConnection() async {
      String status;

      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return WillPopScope(
              onWillPop: _onBackButton,
              child: Center(child: CircularProgressIndicator()));
        },
      );

      WifiConnectionStatus connectionStatus =
          await WifiConfiguration.connectToWifi(
              'NSB_Interaktiv', '', 'com.smidig_28.vy');

      Navigator.pop(context);

      switch (connectionStatus) {
        case WifiConnectionStatus.connected:
          status = 'Du er nå koblet til NSB_Interaktiv';
          break;
        case WifiConnectionStatus.alreadyConnected:
          status = 'Allerede koblet til';
          break;
        case WifiConnectionStatus.notConnected:
          status = 'Noe gikk galt';
          break;
        case WifiConnectionStatus.platformNotSupported:
          status = 'Ditt operativsystem støtter ikke denne tilkoblingsmåten';
          break;
        case WifiConnectionStatus.profileAlreadyInstalled:
          status = 'Nettverket er allerede i listen';
          break;
        case WifiConnectionStatus.locationNotAllowed:
          status = 'For å bruke denne knappen må du slå på lokasjon';
          break;
        default:
          status = "Trenger tillatelser for å koble til";
          break;
      }

      return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(status),
          );
        },
      );
    }

    return Layout(
      appBarText: 'Min Reise',
      customBody: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: _imagePadding),
                child: Image(
                  image: AssetImage('assets/vy.logo.final_primary_big.png'),
                ),
              ),
              Text(
                '-FI',
                style: TextStyle(
                  color: textColorDarkBlue,
                  fontFamily: 'Segoe UI',
                  fontWeight: FontWeight.w600,
                  fontSize: 65.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Gratis internett',
            style: TextStyle(
              color: textColorDarkBlue,
              fontFamily: 'Segoe UI',
              fontWeight: FontWeight.w600,
              fontSize: 27.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          ButtonTheme(
            height: 45.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            child: RaisedButton(
              color: vyColorGreen,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: _horizontalButtonPadding,
                    vertical: _verticalButtonPadding),
                child: Text(
                  'Koble til',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              onPressed: attemptConnection,
            ),
          ),
        ],
      ),
    );
  }
}
