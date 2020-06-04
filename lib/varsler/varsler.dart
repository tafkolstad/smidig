import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vy_test/firebase/firebase_publish.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:vy_test/layout/colors.dart';
import 'varsel.dart';
import 'package:intl/intl.dart';
import 'package:vy_test/firebase/firebase_get.dart';
import 'package:vy_test/varsler/event_data.dart';

enum IconType { DELAYED, WARNING, INFORMATION }

class Varsler extends StatelessWidget {
  FirebasePublish firebasePublish = FirebasePublish();
  FirebaseGet firebaseGet = FirebaseGet();



  final customTimeFormat = new DateFormat('HH:mm');

  var _notificationRef = FirebaseDatabase.instance
      .reference()
      .child('Events')
      .orderByChild('created_at') //order by creation time.
      .limitToFirst(10);

  final List<Varsel> varselList = [];

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min reise',
      customBody: StreamBuilder(
        stream: _notificationRef.onValue,
        builder: (context, AsyncSnapshot<Event> snapshot) {
          if (snapshot.hasData) {
            DataSnapshot dataValues = snapshot.data.snapshot;
            //  var myList = dataValues
            varselList.clear();
            Map<dynamic, dynamic> values = dataValues.value;
            if (values != null) {
              dataValues.value.forEach((key, value) {
                varselList.add(Varsel(
                  title: value['title'],
                  subtitle: value['subtitle'],
                  event: value['eventType'],
                  timestamp: value['timestamp'],
                ));
              });
            }
          }

          return Column(
            children: <Widget>[

                  //TODO push to database
              RaisedButton(
                child: Text('TRYKK'),
                onPressed: () {
                  //info, delayed or warning
                  firebasePublish.pushVarselToDatabase('delayed', 'subtitle');
                },
              ),

              Container(
                  margin: EdgeInsets.fromLTRB(0, 25, 250, 10),
                  child: Text('Varsler',
                      style: TextStyle(fontSize: 30, wordSpacing: 5))),
              // padding: EdgeInsets.fromLTRB(20, 80, 20, 0),
              Expanded(
                child: ListView.builder(
                    itemBuilder: listItem, itemCount: varselList.length),
              )
            ],
          );
        },
      ),
    );
  }

  Widget listItem(BuildContext context, int index) {
    final _horizontalPhoneLength = MediaQuery.of(context).size.width;
    final EventData _eventData = EventData(event: varselList[index].event);

    return Stack(
      children: <Widget>[
        Container(
          height: 62,
          width: 10,
          decoration: BoxDecoration(
              color: _eventData.colorType,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          margin: EdgeInsets.fromLTRB(17, 20, 0, 0),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: dropshadowColor,
                offset: Offset(1, 4),
                blurRadius: 6,
              ),
            ],
            borderRadius: BorderRadius.circular(7.0),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            //Expandable tile
            child: ExpansionTile(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child:
                          Text(varselList[index].subtitle ?? 'default value')),
                ],
                leading: _eventData.iconType,
                title: Text(_eventData.eventTitle) ?? 'default value'),
          ),
        ),

        Container(
          padding: EdgeInsets.fromLTRB(_horizontalPhoneLength * 0.85, 27, 0, 0),
          child: Text(
            customTimeFormat.format(new DateTime.fromMillisecondsSinceEpoch(
                    varselList[index].timestamp) ??
                'default value'),
            style: TextStyle(fontSize: 10),
          ),
        ),
      ],
    );
  }
}
