import 'package:flutter/material.dart';

class MenyItem extends StatelessWidget {
  final String menuItemText;
  final String menuItemImage;
  final String routeName;

  MenyItem({this.menuItemText, this.menuItemImage, this.routeName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.pushNamed(context, '/$routeName');},
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(3, 3),
              blurRadius: 3,
            ),
          ],
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage("assets/$menuItemImage"),
            ),
            Text(menuItemText),
          ],
        ),
      ),
    );
  }
}
