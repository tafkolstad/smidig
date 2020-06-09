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
    final _buttonHeight = MediaQuery.of(context).size.height * 0.045;

    return Container(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.fromLTRB(40, 10, 15, 0),
        child: ButtonTheme(
          padding: EdgeInsets.symmetric(),
          height: _buttonHeight,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Builder(
            builder: (context) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RaisedButton(
                    color: Colors.white,
                    elevation: 5,
                    child: Container(
                      padding: EdgeInsets.only(left: 12),
                      width: 100,
                      child: Row(
                        children: <Widget>[
                          Text(
                            '10 min',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 15.0,
                              fontWeight: FontWeight.w700,
                              color: textColorTitle,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset('assets/ikoner/train_stat.png')
                        ],
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _visible = !_visible;
                      });
                    },
                  ),
                  AnimatedOpacity(
                    opacity: _visible ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 500),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Visibility(
                        visible: _visible,
                        child: StoppestedTile(),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
