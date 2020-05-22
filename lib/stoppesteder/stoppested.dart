import 'package:flutter/material.dart';

class Stoppested extends StatelessWidget {
  final String ankomstTid;
  final String ankomstSted;
  final Color farge;

  Stoppested({this.ankomstTid, this.ankomstSted, this.farge});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(41, 0, 0, 0),
      height: 28,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              ankomstTid,
              style: TextStyle(fontSize: 13),
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                color: farge,
                height: 28,
                width: 5,
                margin: EdgeInsets.fromLTRB(4.5, 0, 0, 0),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: farge),
                height: 10,
                width: 10,
                margin: EdgeInsets.fromLTRB(2, 12, 0, 0),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                height: 6,
                width: 6,
                margin: EdgeInsets.fromLTRB(4, 14, 0, 0),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10,0,0,0),
            child: Text(ankomstSted, style: TextStyle(fontSize: 13)),
          )
        ],
      ),
    );
  }
}
