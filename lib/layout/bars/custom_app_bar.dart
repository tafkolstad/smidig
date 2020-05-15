import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class CustomAppBar extends PreferredSize {
  final String titleText;

  final bool showButtons;

  static const TextStyle textStyle = TextStyle(
    color: Color(0xFF4e4e4e),
    fontSize: 23.0,
    fontFamily: 'Segoe UI', // Does not exist in project
    fontWeight: FontWeight.w600,
  );

  static const PreferredSize dividerLine = PreferredSize(
    preferredSize: null,
    child: Divider(
      height: 0.0,
      color: Colors.black26,
      thickness: 1.0,
    ),
  );

  static const Padding settingsIcon = Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: Icon(
      OMIcons.settings,
      color: Colors.black,
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

    if (showButtons) {
      return PreferredSize(
        preferredSize: null,
        child: AppBar(
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.black,
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
