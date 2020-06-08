import 'package:flutter/material.dart';
import 'package:vy_test/layout/colors.dart';

class MenyItem extends StatelessWidget {
  final String menuItemText;
  final String menuItemImage;
  final String routeName;
  final TextStyle textStyle;
  final double bottomPadding;
  final double sidebarImageSize;

  MenyItem(
      {this.menuItemText,
      this.menuItemImage,
      this.sidebarImageSize,
      this.routeName,
      this.textStyle,
      this.bottomPadding});

  @override
  Widget build(BuildContext context) {
    final _topPadding = MediaQuery.of(context).size.height * 0.01;
    final _containerHeight = MediaQuery.of(context).size.height * 0.10;

    return GestureDetector(
      onTap: () {
        if (routeName == 'reisekart') {
          Navigator.of(context).pushNamedAndRemoveUntil(
              '/reisekart', (Route<dynamic> route) => false);
        } else {
          Navigator.pushNamed(context, '/$routeName');
        }
      },
      child: Container(
        height: _containerHeight,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0x357c94b6),
            width: 1.0,
          ),
          boxShadow: [
            BoxShadow(
              color: dropshadowColor,
              offset: Offset(2, 6),
              blurRadius: 6,
            ),
          ],
          borderRadius: BorderRadius.circular(7.0),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Image(
              width: sidebarImageSize,
              image: AssetImage("assets/ikoner/$menuItemImage"),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: _topPadding,
                bottom: bottomPadding,
              ),
              child: Text(
                menuItemText,
                style: textStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
