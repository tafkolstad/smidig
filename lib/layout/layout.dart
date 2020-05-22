import 'package:flutter/material.dart';
import 'bars/custom_bottom_bar.dart';
import 'bars/custom_app_bar.dart';

class Layout extends Scaffold {
  final String appBarText;
  final bool appBarButtons;
  final Widget customBody;
  final Widget customDrawer;

  Layout(
      {this.appBarText,
      this.appBarButtons = true,
      this.customBody,
      this.customDrawer})
      : super(
          backgroundColor: Color(0xFFEDEAEA),
          appBar: CustomAppBar(
            titleText: appBarText,
            showButtons: appBarButtons,
          ),
          endDrawer: customDrawer,
          endDrawerEnableOpenDragGesture: false,
          drawerScrimColor: Colors.transparent,
          body: customBody,
          bottomNavigationBar: CustomBottomBar(),
        );
}
