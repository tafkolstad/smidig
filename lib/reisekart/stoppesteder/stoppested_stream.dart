import 'package:vy_test/stoppesteder/model/Stoppesteder_Model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StoppestedStream extends StatelessWidget {
  Destinasjon destinasjon = Destinasjon();
  final customTimeFormat = new DateFormat('HH:mm');

  void pushToDatabase(tid, stoppested) {
    FirebaseDatabase.instance.reference().child('Destinations').push().set({
      'tid': tid,
      'stoppested': stoppested,
    });
  }

  var _destinationRef = FirebaseDatabase.instance
      .reference()
      .child('Destinations')
      .limitToFirst(10);

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
            SizedBox(
              height: 120,
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
    return FlatButton(
      onPressed: () {
        Navigator.pushNamed(context, '/stoppesteder');
      },
      child: ListTile(
        leading: Text(
          customTimeFormat.format(new DateTime.fromMillisecondsSinceEpoch(
              _destinationList[index].tid)),
          style: TextStyle(fontSize: 10),
        ),
        trailing: Text(
          _destinationList[index].stoppested,
          style: TextStyle(fontSize: 10),
        ),
      ),
    );
  }
}
