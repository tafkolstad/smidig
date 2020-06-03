import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:vy_test/layout/colors.dart';

class EventData {
  Icon iconType;
  Color colorType;
  String eventTitle = 'undefined';
  String event;

  EventData({this.event}) {
    if (event == 'info') {
      iconType = Icon(
        OMIcons.info,
        color: infoColor,
      );
      colorType = infoColor;
      eventTitle = 'Info';
    } else if (event == 'delayed') {
      iconType = Icon(
        OMIcons.accessTime,
        color: vyColorOrange,
      );
      colorType = vyColorOrange;
      eventTitle = 'Forsinkelse';
    }
  }
}
