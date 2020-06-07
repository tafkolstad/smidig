import 'package:flutter/material.dart';
import 'package:vy_test/layout/colors.dart';

class MatItem extends StatelessWidget {
  final String text;
  final String imagePath;

  MatItem({this.text, this.imagePath});

  @override
  Widget build(BuildContext context) {
    final _phoneWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset('assets/bilder/mat/$imagePath'),
        Padding(
          padding: EdgeInsets.only(left: _phoneWidth * 0.04),
          child: Text(
            text,
            style: TextStyle(
              color: textColorGrey,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              fontFamily: 'Segoe UI',
            ),
          ),
        ),
      ],
    );
  }
}
