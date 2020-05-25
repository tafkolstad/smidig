import 'package:flutter/material.dart';

class Varsel {
  String title;
  String subtitle;
  String timeStamp;
  Icon catagoryIcon;
  Icon isDelayed;
  Color catagoryColor;

  bool userHasRead = false;

  Varsel({
    this.title,
    this.subtitle,
    this.timeStamp,
    this.catagoryIcon,
    this.catagoryColor,
    this.isDelayed,
    this.userHasRead
  });
  void setUserHasRead(){
    userHasRead = true;
  }
}
