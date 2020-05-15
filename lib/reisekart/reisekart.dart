import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';

class Reisekart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',
      customBody: Container(
        child: RaisedButton(
          child: Text('Meny'),
          onPressed: (){
            Navigator.pushNamed(context, '/meny');
          },
        ),
      ),
    );
  }
}