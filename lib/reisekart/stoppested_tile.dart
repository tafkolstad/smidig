import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:vy_test/reisekart/varsel_stream.dart';
import 'package:vy_test/varsler/varsel.dart';
import 'package:vy_test/layout/colors.dart';

class StoppestedTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _phoneHeight = MediaQuery.of(context).size.height;
    final _phoneWidth = MediaQuery.of(context).size.width;

    final _edgePadding = MediaQuery.of(context).size.height * 0.01;
    final _buttonPaddingInside = MediaQuery.of(context).size.width * 0.1;
    final _buttonHeight = MediaQuery.of(context).size.height * 0.05;

    return Container(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: _edgePadding,
        ),
        child: ButtonTheme(
          padding: EdgeInsets.symmetric(
            horizontal: _buttonPaddingInside,
          ),
          height: _buttonHeight,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Builder(builder: (context) {
            return Container(
              margin: EdgeInsets.fromLTRB(_phoneWidth * 0.03,
                  _phoneHeight * 0.01, _phoneWidth * 0.1, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: ExpansionTile(
                  title: Text(
                    'Stoppesteder',
                    style: TextStyle(fontSize: 12),
                  ),
                  children: <Widget>[
                    
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );

//      Container(
//      margin: EdgeInsets.fromLTRB(
//          _phoneWidth * 0.03, _phoneHeight * 0.01, _phoneWidth * 0.1, 0),
//      child: Container(
//
//        decoration: BoxDecoration(
//          color: Colors.white,
//          borderRadius: BorderRadius.all(Radius.circular(15)),
//        ),
//        child: ExpansionTile(
//          title: Text(
//            'Varsler',
//            style: TextStyle(fontSize: 12),
//          ),
//          children: <Widget>[
//            VarselStream(),
//          ],
//        ),
//      ),
//    );
  }
}
