import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:vy_test/reisekart/stoppesteder/stoppested_stream.dart';
import 'package:vy_test/reisekart/varsel_stream.dart';
import 'package:vy_test/severdigheter/model/topp_Opplevelser_Karusell_model.dart';
import 'package:vy_test/stoppesteder/model/Stoppesteder_Model.dart';
import 'package:vy_test/varsler/varsel.dart';
import 'package:vy_test/layout/colors.dart';
import 'package:vy_test/stoppesteder/model/Stoppesteder_Model.dart';

class StoppestedTile extends StatelessWidget {
  Destinasjon destinasjon = new Destinasjon();

  @override
  Widget build(BuildContext context) {
    final _phoneHeight = MediaQuery.of(context).size.height;
    final _phoneWidth = MediaQuery.of(context).size.width;

    final _edgePadding = MediaQuery.of(context).size.height * 0.01;
    final _buttonPaddingInside = MediaQuery.of(context).size.width * 0.1;
    final _buttonHeight = MediaQuery.of(context).size.height * 0.05;

    return Container(
      child: StoppestedStream(),
      height: 70,
      width: 150,
      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: dropshadowColor,
              offset: Offset(1, 4),
              blurRadius: 6,
            ),
          ]),
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
