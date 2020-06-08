import 'package:flutter/material.dart';
import 'package:vy_test/reisekart/stoppesteder/stoppested_stream.dart';
import 'package:vy_test/stoppesteder/model/Stoppesteder_Model.dart';
import 'package:vy_test/layout/colors.dart';


class StoppestedTile extends StatelessWidget {
  final Destinasjon destinasjon = new Destinasjon();

  @override
  Widget build(BuildContext context) {
  
    return Container(
      child: StoppestedStream(),
      height: 145,
      width: 153,
      padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
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
