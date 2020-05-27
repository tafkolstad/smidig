import 'package:flutter/material.dart';
import 'package:vy_test/layout/colors.dart';

class MenyItem extends StatelessWidget {
  final String menuItemText;
  final String menuItemImage;
  final String routeName;
  final TextStyle textStyle;

  MenyItem(
      {this.menuItemText, this.menuItemImage, this.routeName, this.textStyle});

  @override
  Widget build(BuildContext context) {
    final _topPadding = MediaQuery.of(context).size.height * 0.015;
    final _bottomPadding = MediaQuery.of(context).size.height * 0.013;
    final _containerHeight = MediaQuery.of(context).size.height * 0.12;

    return GestureDetector(
      onTap: () {
        if(routeName == 'reisekart'){
          Navigator.of(context).pushNamedAndRemoveUntil('/reisekart', (Route<dynamic> route) => false);
        } else {
          Navigator.pushNamed(context, '/$routeName');
        }
      },
      child: Container(
        height: _containerHeight,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: dropshadowColor,
              offset: Offset(1, 4),
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
              image: AssetImage("assets/$menuItemImage"),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: _topPadding,
                bottom: _bottomPadding,
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
