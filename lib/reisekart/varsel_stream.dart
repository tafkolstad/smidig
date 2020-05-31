import 'package:vy_test/varsler/varsel.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:vy_test/layout/colors.dart';

class VarselStream extends StatelessWidget {
  var _notificationRef = FirebaseDatabase.instance
      .reference()
      .child('recent')
      .orderByChild('created_at') //order by creation time.
      .limitToFirst(3);

  final List<Varsel> _varselList = [];

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _notificationRef.onValue,
      builder: (context, AsyncSnapshot<Event> snapshot) {
        if (snapshot.hasData) {
          DataSnapshot dataValues = snapshot.data.snapshot;
          _varselList.clear();
          Map<dynamic, dynamic> values = dataValues.value;
          if (values != null) {
            dataValues.value.forEach(
              (key, value) {
                _varselList.add(
                  Varsel(
                    title: value['title'],
                    //  subtitle: value['subtitle'],
                    //  icon: value['iconType'],
                    //   color: value['catagoryColor'],
                    //  timestamp: value['timestamp'].toString()),
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
              height: 50.0 * _varselList.length,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: listItem,
                  itemCount: _varselList.length),
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
        Navigator.pushNamed(context, '/varsler');
      },
      child: ListTile(
        title: Text(
          _varselList[index].title,
          style: TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}
