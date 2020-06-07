import 'package:flutter/material.dart';
import 'package:vy_test/reisekart/varsler/varsel_stream.dart';
import 'package:vy_test/layout/colors.dart';

class VarselTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 0),
      child: VarselStream(),
      height: 150,
      width: 140,
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
