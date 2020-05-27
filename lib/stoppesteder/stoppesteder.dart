import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:vy_test/layout/colors.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'dart:async';
import 'stoppested.dart';

class Stoppesteder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',
      customBody:
//      Column(
//        children: <Widget>[
//          Container(
//            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
//            width: 400,
//            height: 50,
//            child: Text(
//              "Stoppesteder",
//              style: TextStyle(
//                  fontFamily: 'Segoe',
//                  color: Color(0xff383E42),
//                  fontWeight: FontWeight.w600,
//                  fontSize: 30),
//            ),
//          ),
//          Row(
//            children: <Widget>[
//              Container(
//                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//                width: 110,
//                height: 490,
//                child: Column(
//                  children: <Widget>[
//                    Container(
//                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                        child: Text("21:22")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                        child: Text("21:22")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                        child: Text("21:22")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                        child: Text("21:22")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                        child: Text("21:22")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                        child: Text("21:22")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                        child: Text("21:22")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                        child: Text("21:22")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                        child: Text("21:22")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                        child: Text("21:22")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                        child: Text("21:22")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                        child: Text("21:22")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                        child: Text("21:22")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                        child: Text("21:22")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                        child: Text("21:22")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                        child: Text("21:22")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
//                        child: Text("23:30"))
//                  ],
//                ),
//              ),

//              Container(
//                height: 450,
//                margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
//                child: StepProgressIndicator(
//                  totalSteps: 17,
//                  currentStep: 12,
//                  size: 5,
//                  padding: 0,
//                  roundedEdges: Radius.circular(10),
//                  direction: Axis.vertical,
//                  selectedColor: Color(0xFF00685E),
//                  unselectedColor: Color(0xFF00957A),
//                ),
//              ),










//              Stack(
//                children: <Widget>[
//                  Container(
//                    width: 10,
//                    height: 400,
//                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
//                    margin: EdgeInsets.fromLTRB(0, 0, 0, 80),
//                    child: FAProgressBar(
//                      currentValue: 100,
//                      direction: Axis.vertical,
//                      verticalDirection: VerticalDirection.down,
//                      backgroundColor: Color(0xFF00957A),
//                      progressColor: Color(0xFF00685E),
//                      animatedDuration: Duration(milliseconds: 10000),
//                    ),
//                  ),
//                  Container(
//                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: Color(0xFF00957A)),
//                    width: 15,
//                    height: 15,
//                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
//                    child: Center(
//                      child: Container(
//                        width: 10,
//                        height: 10,
//                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: Colors.white,
//                        ),
//
//                      ),
//                    )
//                  ),
//                  Container(
//                    width: 10,
//                    height: 10,
//                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: Color(0xFF00957A)),
//                    margin: EdgeInsets.fromLTRB(2, 25, 0, 0),
//                    child: Center(
//                      child: Container(
//                        width: 5,
//                        height: 5,
//                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: Colors.white,
//                        ),
//
//                      ),
//                    )
//                  ),
//
//
//                ],
//              ),
//
//              Container(
//                width: 200,
//                height: 490,
//                child: Column(
//                  crossAxisAlignment: CrossAxisAlignment.start,
//                  children: <Widget>[
//                    Container(
//                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
//                        child: Text("Oslo S")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
//                        child: Text("Lillestrøm stasjon")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
//                        child: Text("Oslo Lufthavn")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
//                        child: Text("Hamar stasjon")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
//                        child: Text("Lillehammer stasjon")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
//                        child: Text("Hunderfossen stasjon")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
//                        child: Text("Ringbu stasjon")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
//                        child: Text("Vinstra stasjon")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
//                        child: Text("Otta stasjon")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
//                        child: Text("Dombås")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
//                        child: Text("Hjerkinn")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
//                        child: Text("Kongsvoll")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
//                        child: Text("Oppdal stasjon")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
//                        child: Text("Berkåk")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
//                        child: Text("Støren")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
//                        child: Text("Heimdal stasjon")),
//                    Container(
//                        padding: EdgeInsets.fromLTRB(10, 8, 0, 0),
//                        child: Text("Trondheim S"))
//                  ],
//                ),
//              )
//            ],
//          )
//        ],
//      ),





      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
            child: Text(
              'Stoppesteder',
              style: TextStyle(
                  fontFamily: 'Segoe',
                  color: Color(0xff383E42),
                  fontWeight: FontWeight.w600,
                  fontSize: 30),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
            height: 29,
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text('21:22', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(6, 15, 0, 0),
                      color: vyColorDarkGreen,
                      height: 15,
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: vyColorDarkGreen),
                      margin: EdgeInsets.fromLTRB(0, 7, 0, 0),
                      height: 18,
                      width: 18,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFEDEAEA)),
                      margin: EdgeInsets.fromLTRB(4, 11, 0, 0),
                      height: 10,
                      width: 10,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15,0,0,0),
                  child: Text('Oslo S', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                )
              ],
            ),
          ),
          Stoppested(
            ankomstSted: 'Lillestrøm stasjon',
            ankomstTid: '21:23',
            farge: vyColorDarkGreen,
          ),
          Stoppested(
            ankomstSted: 'Oslo Lufthavn',
            ankomstTid: '21:34',
            farge: vyColorDarkGreen,
          ),
          Stoppested(
            ankomstSted: 'Hamar stasjon',
            ankomstTid: '21:41',
            farge: vyColorDarkGreen,

          ),
          Stoppested(
            ankomstSted: 'Lillehammer stasjon',
            ankomstTid: '21:54',
            farge: vyColorDarkGreen,

          ),
          Stoppested(
            ankomstSted: 'Hunderfossen stasjon',
            ankomstTid: '22:01',
            farge: vyColorGreen,
          ),
          Stoppested(
            ankomstSted: 'Ringbu stasjon',
            ankomstTid: '22:15',
            farge: vyColorGreen,

          ),
          Stoppested(
            ankomstSted: 'Vinstra stasjon',
            ankomstTid: '22:23',
            farge: vyColorGreen,

          ),
          Stoppested(
            ankomstSted: 'Otta stasjon',
            ankomstTid: '22:45',
            farge: vyColorGreen,

          ),
          Stoppested(
            ankomstSted: 'Dombås',
            ankomstTid: '22:57',
            farge: vyColorGreen,

          ),
          Stoppested(
            ankomstSted: 'Hjerkinn',
            ankomstTid: '23:12',
            farge: vyColorGreen,

          ),
          Stoppested(
            ankomstSted: 'Kongsvoll',
            ankomstTid: '23:19',
            farge: vyColorGreen,

          ),
          Stoppested(
            ankomstSted: 'Oppdal stasjon',
            ankomstTid: '23:26',
            farge: vyColorGreen,

          ),
          Stoppested(
            ankomstSted: 'Berkåk',
            ankomstTid: '23:34',
            farge: vyColorGreen,

          ),
          Stoppested(
            ankomstSted: 'Støren',
            ankomstTid: '23:41',
            farge: vyColorGreen,

          ),
          Stoppested(
            ankomstSted: 'Heimdal stasjon',
            ankomstTid: '23:51',
            farge: vyColorGreen,

          ),
          Container(
            padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
            height: 28,
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Text('00:12', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(6, 0, 0, 14),
                      color: vyColorGreen,
                      height: 15,
                      width: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: vyColorGreen),
                      margin: EdgeInsets.fromLTRB(0, 7, 0, 0),
                      height: 18,
                      width: 18,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFFEDEAEA)),
                      margin: EdgeInsets.fromLTRB(4, 11, 0, 0),
                      height: 10,
                      width: 10,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Text('Trondheim S', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
