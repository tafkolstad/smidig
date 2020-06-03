import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:vy_test/reisekart/varsler/varsel_stream.dart';
import 'package:vy_test/varsler/varsel.dart';
import 'package:vy_test/layout/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vy_test/reisekart/varsler/varsel_tile.dart';

class VarselButton extends StatefulWidget {
  @override
  _VarselButtonState createState() => _VarselButtonState();
}

class _VarselButtonState extends State<VarselButton> {
  bool _visible = false;
  @override
  Widget build(BuildContext context) {
    final _phoneHeight = MediaQuery.of(context).size.height;
    final _phoneWidth = MediaQuery.of(context).size.width;

    final _edgePadding = MediaQuery.of(context).size.height * 0.01;
    final _buttonPaddingInside = MediaQuery.of(context).size.width * 0.1;
    final _buttonHeight = MediaQuery.of(context).size.height * 0.05;

    return Container(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
        child: ButtonTheme(
          padding: EdgeInsets.symmetric(
              // horizontal: _buttonPaddingInside,
              ),
          height: _buttonHeight,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Builder(
            builder: (context) {
              return Column(
                children: <Widget>[
                  RaisedButton(
                    color: Colors.white,
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      width: 100,
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Varsler',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700,
                              color: vyColorBlack,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            FontAwesomeIcons.bell,
                            size: 18,
                            color: vyColorYellow,
                          )
                        ],
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _visible = !_visible;
                      });
                    },
                  ),
                  AnimatedOpacity(opacity: _visible ? 1.0 : 0.0,duration:  Duration(milliseconds: 500), child: VarselTile()),
                ],
              );
            },
          ),
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
