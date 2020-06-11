import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:vy_test/layout/colors.dart';

class EventData {
  Icon iconType;
  Color colorType;
  String eventTitle = 'undefined';
  String event;
  double iconSize;

  EventData({this.event, this.iconSize}) {
    if (event == 'info') {
      iconType = Icon(
        OMIcons.info,
        color: infoColor,
        size: iconSize,
      );
      colorType = infoColor;
      eventTitle = 'Info';
    } else if (event == 'delayed') {
      iconType = Icon(
        OMIcons.accessTime,
        color: vyColorOrange,
        size: iconSize,
      );
      colorType = vyColorOrange;
      eventTitle = 'Forsinkelse';
    }else if(event == 'warning'){
         iconType = Icon(
        OMIcons.warning,
        color: tekniskFeilColor,
        size: iconSize,
      );
      colorType = tekniskFeilColor;
      eventTitle = 'Varsel';
    }
  }
}
