import 'package:flutter/material.dart';
import 'package:vy_test/layout/colors.dart';

class TextContainer extends StatelessWidget {
  final Widget customChild;
  final double customHeight;

  TextContainer({this.customChild, this.customHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: customHeight,
      decoration: BoxDecoration(
        color: textContainerColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 4.0,
            color: dropshadowColor,
            offset: Offset(6, 6),
          ),
        ],
      ),
      child: customChild,
    );
  }
}
