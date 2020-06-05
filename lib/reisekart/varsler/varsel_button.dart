import 'package:flutter/material.dart';
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
    final _buttonHeight = MediaQuery.of(context).size.height * 0.045;

    return Container(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: ButtonTheme(
          padding: EdgeInsets.symmetric(
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
                      padding: EdgeInsets.only(left: 12),
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
                              color: textColorTitle,
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
                  AnimatedOpacity(opacity: _visible ? 1.0 : 0.0,duration:  Duration(milliseconds: 500), child: Padding(
                    padding: const EdgeInsets.fromLTRB(0,10,40,0),
                    child: VarselTile(),
                  )),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
