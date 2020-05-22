import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:vy_test/layout/layout.dart';

class Stoppesteder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',
      customBody: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
            width: 400,
            height: 50,
            child: Text(
              "Stoppesteder",
              style: TextStyle(
                  fontFamily: 'Segoe',
                  color: Color(0xff383E42),
                  fontWeight: FontWeight.w600,
                  fontSize: 30),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                width: 110,
                height: 490,
                child: Column(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text("21:22")),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text("21:22")),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text("21:22")),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text("21:22")),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text("21:22")),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text("21:22")),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text("21:22")),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text("21:22")),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text("21:22")),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text("21:22")),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text("21:22")),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text("21:22")),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text("21:22")),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text("21:22")),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text("21:22")),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text("21:22")),
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Text("23:30"))
                  ],
                ),
              ),
//              Stack(
//                children: <Widget>[
//                  Container(
//                    width: 33,
//                    height: 490,
//                  ),
//                  Container(
//                    decoration: BoxDecoration(
//                        gradient: LinearGradient(
//                            begin: Alignment.topCenter,
//                            end: Alignment.bottomCenter,
//                            stops: [0.1, 1],
//
//                            colors: [ Colors.black,Color(0xFF00957A)])),
//                    margin: EdgeInsets.fromLTRB(14, 10, 0, 0),
//                    width: 4,
//                    height: 360,
//                  ),
//                  Container(
//                  decoration: BoxDecoration(
//                          borderRadius: BorderRadius.circular(10),
//                          color: Color(0xFF00685E)),
//                    height: 16,
//                    width: 16,
//                    margin: EdgeInsets.fromLTRB(8.5, 5, 0, 0),
//                  ),
//                  Container(
//                  decoration: BoxDecoration(
//                          borderRadius: BorderRadius.circular(5),
//                          color: Color(0xFFEDEAEA)),
//                    height: 9,
//                    width: 9,
//                    margin: EdgeInsets.fromLTRB(12, 8.5, 0, 0),
//                  ),
//
//                ],
//              ),
              Container(
                width: 10,
                height: 360,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 120),
                child: FAProgressBar(
                  size: 10,
                  currentValue: 100,
                  direction: Axis.vertical,
                  verticalDirection: VerticalDirection.down,
                  backgroundColor: Color(0xFF00957A),
                  progressColor: Color(0xFF00685E),
                  animatedDuration: Duration(milliseconds: 6000),
                ),
              ),

              Container(
                width: 200,
                height: 490,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text("Oslo S")),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text("Lillestrøm stasjon")),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text("Oslo Lufthavn")),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text("Hamar stasjon")),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text("Lillehammer stasjon")),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text("Hunderfossen stasjon")),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text("Ringbu stasjon")),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text("Vinstra stasjon")),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text("Otta stasjon")),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text("Dombås")),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text("Hjerkinn")),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text("Kongsvoll")),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text("Oppdal stasjon")),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text("Berkåk")),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text("Støren")),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text("Heimdal stasjon")),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text("Trondheim S"))
                  ],
                ),
              )
            ],
          )
        ],
      ),
//      Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Container(
//            padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
//            child: Text(
//              'Stoppesteder',
//              style: TextStyle(
//                  fontFamily: 'Segoe',
//                  color: Color(0xff383E42),
//                  fontWeight: FontWeight.w600,
//                  fontSize: 30),
//            ),
//          ),
//          Container(
//            padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
//            height: 29,
//            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.start,
//              children: <Widget>[
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Text('21:22', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
//                ),
//                Stack(
//                  children: <Widget>[
//                    Container(
//                      margin: EdgeInsets.fromLTRB(4.5, 15, 0, 0),
//                      color: Color(0xFF00685E),
//                      height: 15,
//                      width: 5,
//                    ),
//                    Container(
//                      decoration: BoxDecoration(
//                          borderRadius: BorderRadius.circular(10),
//                          color: Color(0xFF00685E)),
//                      margin: EdgeInsets.fromLTRB(0, 7, 0, 0),
//                      height: 14,
//                      width: 14,
//                    ),
//                    Container(
//                      decoration: BoxDecoration(
//                          borderRadius: BorderRadius.circular(5),
//                          color: Color(0xFFEDEAEA)),
//                      margin: EdgeInsets.fromLTRB(3, 10, 0, 0),
//                      height: 8,
//                      width: 8,
//                    )
//                  ],
//                ),
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Text('Oslo S', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
//                )
//              ],
//            ),
//          ),
//          Stoppested(
//            ankomstSted: 'Lillestrøm stasjon',
//            ankomstTid: '21:23',
//            farge: Color(0xFF00685E),
//          ),
//          Stoppested(
//            ankomstSted: 'Oslo Lufthavn',
//            ankomstTid: '21:34',
//            farge: Color(0xFF00685E),
//          ),
//          Stoppested(
//            ankomstSted: 'Hamar stasjon',
//            ankomstTid: '21:41',
//            farge: Color(0xFF00685E),
//
//          ),
//          Stoppested(
//            ankomstSted: 'Lillehammer stasjon',
//            ankomstTid: '21:54',
//            farge: Color(0xFF00685E),
//
//          ),
//          Stoppested(
//            ankomstSted: 'Hunderfossen stasjon',
//            ankomstTid: '22:01',
//            farge: Color(0xFF00957A),
//          ),
//          Stoppested(
//            ankomstSted: 'Ringbu stasjon',
//            ankomstTid: '22:15',
//            farge: Color(0xFF00957A),
//
//          ),
//          Stoppested(
//            ankomstSted: 'Vinstra stasjon',
//            ankomstTid: '22:23',
//            farge: Color(0xFF00957A),
//
//          ),
//          Stoppested(
//            ankomstSted: 'Otta stasjon',
//            ankomstTid: '22:45',
//            farge: Color(0xFF00957A),
//
//          ),
//          Stoppested(
//            ankomstSted: 'Dombås',
//            ankomstTid: '22:57',
//            farge: Color(0xFF00957A),
//
//          ),
//          Stoppested(
//            ankomstSted: 'Hjerkinn',
//            ankomstTid: '23:12',
//            farge: Color(0xFF00957A),
//
//          ),
//          Stoppested(
//            ankomstSted: 'Kongsvoll',
//            ankomstTid: '23:19',
//            farge: Color(0xFF00957A),
//
//          ),
//          Stoppested(
//            ankomstSted: 'Oppdal stasjon',
//            ankomstTid: '23:26',
//            farge: Color(0xFF00957A),
//
//          ),
//          Stoppested(
//            ankomstSted: 'Berkåk',
//            ankomstTid: '23:34',
//            farge: Color(0xFF00957A),
//
//          ),
//          Stoppested(
//            ankomstSted: 'Støren',
//            ankomstTid: '23:41',
//            farge: Color(0xFF00957A),
//
//          ),
//          Stoppested(
//            ankomstSted: 'Heimdal stasjon',
//            ankomstTid: '23:51',
//            farge: Color(0xFF00957A),
//
//          ),
//          Container(
//            padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
//            height: 28,
//            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.start,
//              children: <Widget>[
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Text('00:12', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
//                ),
//                Stack(
//                  children: <Widget>[
//                    Container(
//                      margin: EdgeInsets.fromLTRB(4.5, 0, 0, 14),
//                      color: Color(0xFF00957A),
//                      height: 15,
//                      width: 5,
//                    ),
//                    Container(
//                      decoration: BoxDecoration(
//                          borderRadius: BorderRadius.circular(10),
//                          color: Color(0xFF00957A)),
//                      margin: EdgeInsets.fromLTRB(0, 7, 0, 0),
//                      height: 14,
//                      width: 14,
//                    ),
//                    Container(
//                      decoration: BoxDecoration(
//                          borderRadius: BorderRadius.circular(5),
//                          color: Color(0xFFEDEAEA)),
//                      margin: EdgeInsets.fromLTRB(3, 10, 0, 0),
//                      height: 8,
//                      width: 8,
//                    )
//                  ],
//                ),
//                Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: Text('Trondheim S', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
//                )
//              ],
//            ),
//          ),
//        ],
//      ),
    );
  }
}
