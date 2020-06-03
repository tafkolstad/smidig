import 'package:flutter/material.dart';
import 'package:vy_test/reisekart/stoppesteder/stoppested_tile.dart';
import 'package:vy_test/layout/colors.dart';

class StoppestedButton extends StatefulWidget {
  @override
  _StoppestedButtonState createState() => _StoppestedButtonState();
}

class _StoppestedButtonState extends State<StoppestedButton> {
  bool _visible = false;
  @override
  Widget build(BuildContext context) {
    final _buttonHeight = MediaQuery.of(context).size.height * 0.05;

    return Container(
      alignment: Alignment.topLeft,
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
                            '2 min',
                            textAlign: TextAlign.right,
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
                          Image.asset('assets/train_stat.png')
                        ],
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _visible = !_visible;
                      });
                    },
                  ),
                  AnimatedOpacity(opacity: _visible ? 1.0 : 0.0,duration:  Duration(milliseconds: 500), child: StoppestedTile()),
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
