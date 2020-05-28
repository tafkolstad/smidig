import 'package:flutter/material.dart';
import 'package:vy_test/stoppesteder/model/Stoppesteder_Model.dart';

final TextStyle _textStyle = TextStyle(fontSize: 16);

class StoppestederSted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 530,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: destinasjoner.length,
        itemBuilder: (BuildContext context, int index) {
          Destinasjon destinasjon = destinasjoner[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 31.6,
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                    destinasjon.stoppested, 
                    style: _textStyle,
                  )
              ),
            ],
          );
        },
      ),
    );
  }
}