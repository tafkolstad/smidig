import 'package:flutter/material.dart';

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
              color: Colors.grey,
              offset: Offset(3, 3),
              blurRadius: 3,
            ),
          ],
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Image(
                image: AssetImage("assets/$menuItemImage"),
              ),
              SizedBox(height: 10.0,),
              Text(menuItemText, style: textStyle,),
            ],
          ),
        ),
      ),
    );
  }
}
