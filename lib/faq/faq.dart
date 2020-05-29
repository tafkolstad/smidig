import 'package:flutter/material.dart';
import 'package:vy_test/faq/ItemList.dart';
import 'package:vy_test/layout/layout.dart';

class Faq extends StatelessWidget {

final ItemList _itemList=ItemList();

Future<bool>_onBackPressed(){
   _itemList.collapseAll();
   return Future.value(true);
}

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
          child: Layout(
        appBarText: 'Min Reise',
        customBody: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Text('Spørsmål og svar',
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Raleway',
                          color: Color(0xff383E42))),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: _itemList,
          )
        ]),
      ),
    );
  }
}
