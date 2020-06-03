import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:vy_test/reisekart/varsler/varsel_stream.dart';
import 'package:vy_test/varsler/varsel.dart';
import 'package:vy_test/layout/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VarselTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
  
      height: 120,
      width: 150,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: dropshadowColor,
              offset: Offset(1, 4),
              blurRadius: 6,
            ),
          ]),
    );
  }
}
