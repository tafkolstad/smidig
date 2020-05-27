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
            padding: const EdgeInsets.all(6),
            child: Text(
              ankomstTid,
              style: TextStyle(fontSize: 15),
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                color: farge,
                height: 28,
                width: 5,
                margin: EdgeInsets.fromLTRB(6, 0, 0, 0),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: farge),
                height: 12,
                width: 12,
                margin: EdgeInsets.fromLTRB(2.5, 12, 0, 0),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                height: 7,
                width: 7,
                margin: EdgeInsets.fromLTRB(5, 14.5, 0, 0),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,0,0,0),
            child: Text(ankomstSted, style: TextStyle(fontSize: 15)),
          )
        ],
      ),
    );
  }
}
