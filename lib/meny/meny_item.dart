import 'package:flutter/material.dart';
import 'package:vy_test/layout/colors.dart';

class MenyItem extends StatelessWidget {
  final String menuItemText;
  final String menuItemImage;
  final String routeName;
  final TextStyle textStyle;

  MenyItem({this.menuItemText, this.menuItemImage, this.routeName, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.pushNamed(context, '/$routeName');},
      child: Container(
        height: 80,
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
              padding: EdgeInsets.only(top: 10.0, bottom: 12.0),
              child: Text(
                menuItemText,
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 20.0,
                  color: textColorMenu,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
