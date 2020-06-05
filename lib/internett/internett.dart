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
    final _phoneHeight = MediaQuery.of(context).size.height;
    final _phoneWidth = MediaQuery.of(context).size.width;

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
                padding: EdgeInsets.only(top: _phoneHeight * 0.015),
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
            height: _phoneHeight * 0.02,
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
            height: _phoneHeight * 0.045,
          ),
          ButtonTheme(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            child: RaisedButton(
              color: vyColorGreen,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: _phoneWidth * 0.14,
                  vertical: _phoneHeight * 0.025,
                ),
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
          SizedBox(
            height: _phoneHeight * 0.01,
          ),
          Text(
            'Ved å trykke "koble til", aksepterer du våre\nbetingelser',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10.0,
              fontFamily: 'Segoe UI',
              color: textColorGrey,
            ),
          ),
        ],
      ),
    );
  }
}
