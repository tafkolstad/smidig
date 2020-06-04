import 'package:flutter/material.dart';
import 'package:vy_test/reisekart/stoppesteder/stoppested_stream.dart';
import 'package:vy_test/stoppesteder/model/Stoppesteder_Model.dart';
import 'package:vy_test/layout/colors.dart';


class StoppestedTile extends StatelessWidget {
  Destinasjon destinasjon = new Destinasjon();

  @override
  Widget build(BuildContext context) {
  
    return Container(
      child: StoppestedStream(),
      height: 145,
      width: 145,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
