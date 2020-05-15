import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';

class Severdigheter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',
      customBody: Container(
        child: Text('Severdigheter'),
      ),
    );
  }
}