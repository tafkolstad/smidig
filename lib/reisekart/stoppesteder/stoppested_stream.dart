import 'package:vy_test/stoppesteder/model/Stoppesteder_Model.dart';
import 'package:vy_test/stoppesteder/stoppesteder.dart';
import 'package:vy_test/varsler/varsel.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:vy_test/layout/colors.dart';

class StoppestedStream extends StatelessWidget {
  Destinasjon destinasjon = Destinasjon();

  void pushToDatabase(tid, stoppested) {
    FirebaseDatabase.instance.reference().child('Destinations').push().set({
      'tid': tid,
      'stoppested': stoppested,
    });
  }

  var _destinationRef = FirebaseDatabase.instance
      .reference()
      .child('Destinations')
      .limitToFirst(3);

  final List<Destinasjon> _destinationList = [];

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _destinationRef.onValue,
      builder: (context, AsyncSnapshot<Event> snapshot) {
        if (snapshot.hasData) {
          DataSnapshot dataValues = snapshot.data.snapshot;
          _destinationList.clear();
          Map<dynamic, dynamic> values = dataValues.value;
          if (values != null) {
            dataValues.value.forEach(
              (key, value) {
                _destinationList.add(
                  Destinasjon(
                    tid: value['tid'],
                    stoppested: value['stoppested'],
                  ),
                );
              },
            );
          }
        }
        return Column(
          children: <Widget>[
            // padding: EdgeInsets.fromLTRB(20, 80, 20, 0),
            SizedBox(
              height: 80,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: listItem,
                  itemCount: _destinationList.length),
            )
          ],
        );
      },
    );
  }

  Widget listItem(BuildContext context, int index) {
    final _horizontalPhoneLength = MediaQuery.of(context).size.width;
    final _verticalPhoneLength = MediaQuery.of(context).size.height;

    return FlatButton(
      onPressed: () {
        Navigator.pushNamed(context, '/stoppesteder');
      },
      child: ListTile(
        title: Text(
          _destinationList[index].tid,
          style: TextStyle(fontSize: 9),
        ),
        subtitle: Text(
          _destinationList[index].stoppested,
          style: TextStyle(fontSize: 13),
        ),
      ),
    );
  }
}
