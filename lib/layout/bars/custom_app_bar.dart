import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:vy_test/layout/colors.dart';

class CustomAppBar extends PreferredSize {
  final String titleText;

  final bool showButtons;

  static const TextStyle textStyle = TextStyle(
    color: Color(0xFF4e4e4e),
    fontSize: 23.0,
    fontFamily: 'Segoe UI',
  );

  static const PreferredSize dividerLine = PreferredSize(
    preferredSize: null,
    child: Divider(
      height: 0.0,
      color: Colors.black26,
      thickness: 1.0,
    ),
  );

  CustomAppBar({this.titleText, this.showButtons = true})
      : super(
          preferredSize: Size.fromHeight(56.0),
          child: null,
        );

  @override
  Widget build(BuildContext context) {
    final text = Text(
      titleText,
      style: textStyle,
    );

    void _onSettingsPressed() {
      Navigator.pushNamed(context, '/innstillinger');
    }

    Padding settingsIcon = Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: IconButton(
        onPressed: _onSettingsPressed,
        icon: Icon(
          OMIcons.settings,
          color: topbarIcon,
        ),
      ),
    );

    if (showButtons) {
      return PreferredSize(
        preferredSize: null,
        child: AppBar(
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: BackButton(
            color: topbarIcon,
          ),
          actions: <Widget>[
            settingsIcon,
          ],
          title: text,
          bottom: dividerLine,
        ),
      );
    } else {
      return PreferredSize(
        preferredSize: null,
        child: AppBar(
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: text,
          bottom: dividerLine,
        ),
      );
    }
  }
}
