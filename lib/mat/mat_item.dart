import 'package:flutter/material.dart';

class MatItem extends StatelessWidget {
  final String text;
  final String imagePath;

  MatItem({this.text, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Image.asset('assets/$imagePath'),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(
            text,
            style: TextStyle(
              color: Color(0xff3B434D),
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
