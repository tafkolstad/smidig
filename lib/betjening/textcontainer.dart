import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  final Widget customChild;
  final double customHeight;

  TextContainer({this.customChild, this.customHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: customHeight,
      decoration: BoxDecoration(
        color: Color(0xffE0E7F6),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 5.0,
            color: Colors.grey[400],
            offset: Offset(5, 5),
          ),
        ],
      ),
      child: customChild,
    );
  }
}
