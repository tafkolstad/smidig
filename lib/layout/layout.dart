import 'package:flutter/material.dart';
import 'bars/custom_bottom_bar.dart';
import 'bars/custom_app_bar.dart';
import 'package:vy_test/layout/colors.dart';

class Layout extends Scaffold {
  final String appBarText;
  final bool appBarButtons;
  final Widget customBody;

  Layout({this.appBarText, this.appBarButtons = true, this.customBody})
      : super(
          backgroundColor: backgroudColor,
          appBar: CustomAppBar(
            titleText: appBarText,
            showButtons: appBarButtons,
          ),
          body: customBody,
          bottomNavigationBar: CustomBottomBar(),
        );
}
