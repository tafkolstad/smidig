import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:vy_test/reisekart/meny_button.dart';
import 'package:vy_test/reisekart/sidebar.dart';

class Reisekart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Layout(
      appBarText: 'Min Reise',
      appBarButtons: false,
      customDrawer: Sidebar(),
      // Menu button
      customBody: MenuButton(),
    );
  }
}
