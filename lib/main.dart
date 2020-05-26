import 'package:flutter/material.dart';
import 'package:vy_test/betjening/betjening.dart';
import 'package:vy_test/billetter/billetter.dart';
import 'package:vy_test/dyr/dyr.dart';
import 'package:vy_test/innstillinger/innstillinger.dart';
import 'package:vy_test/internett/internett.dart';
import 'package:vy_test/kontroll/kontroll.dart';
import 'package:vy_test/mat/mat.dart';
import 'package:vy_test/meny/meny.dart';
import 'package:vy_test/om_oss/om_oss.dart';
import 'package:vy_test/reisekart/reisekart.dart';
import 'package:vy_test/severdigheter/severdigheter.dart';
import 'package:vy_test/severdigheter/severdigheterviewall.dart';
import 'package:vy_test/sove/sove.dart';
import 'package:vy_test/stoppesteder/stoppesteder.dart';
import 'package:vy_test/varsler/varsler.dart';
import 'package:vy_test/vognoversikt/vognoversikt.dart';
import 'package:flutter/services.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
  statusBarColor: Colors.black, 
  ));

  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Billetter(),
      '/kontroll': (context) => Kontroll(),
      '/reisekart': (context) => Reisekart(),
      '/meny': (context) => Meny(),
      '/betjening': (context) => Betjening(),
      '/dyr': (context) => Dyr(),
      '/internett': (context) => Internett(),
      '/mat': (context) => Mat(),
      '/omOss': (context) => OmOss(),
      '/severdigheter': (context) => Severdigheter(),
      '/sove': (context) => Sove(),
      '/stoppesteder': (context) => Stoppesteder(),
      '/varsler': (context) => Varsler(),
      '/vognoversikt': (context) => Vognoversikt(),
      '/innstillinger': (context) => Innstillinger(),
      '/severdigheterviewall': (context) => SeverdigheterViewAll(),
    },
  ));
}
