import 'dart:ffi';

import 'package:flutter/material.dart';

class SirkelStoppested extends StatelessWidget {

  Color circleColor;
  double circleHeight;
  double circleWidth;
  double childCircleHeight;
  double childCircleWidth;


  SirkelStoppested({this.circleColor, this.circleHeight, this.circleWidth, this.childCircleHeight, this.childCircleWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: circleColor),
        width: circleWidth,
        height: circleHeight,
        child: Center(
          child: Container(
            width: childCircleWidth,
            height: childCircleHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
          ),
        )
    );
  }
}
