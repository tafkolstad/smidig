import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:vy_test/reisekart/varsel_stream.dart';
import 'package:vy_test/varsler/varsel.dart';
import 'package:vy_test/layout/colors.dart';

class VarselTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _phoneHeight = MediaQuery.of(context).size.height;
    final _phoneWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.fromLTRB(
          _phoneWidth * 0.09, _phoneHeight * 0.1, _phoneWidth * 0.09, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: ExpansionTile(
          title: Text(
            'Varsler',
            style: TextStyle(fontSize: 12),
          ),
          children: <Widget>[
            VarselStream(),
          ],
        ),
      ),
    );
  }
}
