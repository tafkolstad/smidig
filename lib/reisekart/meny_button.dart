import 'package:flutter/material.dart';
import 'package:vy_test/layout/colors.dart';

class MenuButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _edgePadding = MediaQuery.of(context).size.height * 0.014;
    final _buttonPaddingInsideTop = MediaQuery.of(context).size.width * 0.005;
    final _buttonPaddingInsideBottom = MediaQuery.of(context).size.width * 0.01;
    final _buttonPaddingInsideLeft = MediaQuery.of(context).size.width * 0.09;
    final _buttonPaddingInsideRight = MediaQuery.of(context).size.width * 0.09;
    final _buttonHeight = MediaQuery.of(context).size.height * 0.048;

    return Container(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: _edgePadding,
        ),
        child: ButtonTheme(
          padding: EdgeInsets.fromLTRB(
            _buttonPaddingInsideLeft,
            _buttonPaddingInsideTop,
            _buttonPaddingInsideRight,
            _buttonPaddingInsideBottom
          ),
          height: _buttonHeight,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Builder(
            builder: (context) {
              return RaisedButton(
                color: Colors.white,
                elevation: 5,
                child: Text(
                  'Meny',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: vyColorDarkGreen,
                  ),
                ),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
