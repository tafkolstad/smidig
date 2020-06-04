import 'package:vy_test/layout/colors.dart';
import 'package:vy_test/varsler/event_data.dart';
import 'package:vy_test/varsler/varsel.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class VarselStream extends StatelessWidget {
  var _notificationRef =
      FirebaseDatabase.instance.reference().child('Events').limitToFirst(4);

  final customTimeFormat = new DateFormat('HH:mm');

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
                      event: value['eventType'],
                      subtitle: value['subtitle'],
                      timestamp: value['timestamp']),
                );
              },
            );
          }
        }
        return Column(
          children: <Widget>[
            // padding: EdgeInsets.fromLTRB(20, 80, 20, 0),
            SizedBox(
              height: 180,
              child: ListView.separated(
                
              
                separatorBuilder: (context, index) => Divider(color: vyColorBlack,),
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  shrinkWrap: true,
                  itemBuilder: listItem,
                  itemCount: _varselList.length
                  ),
                  
            )
          ],
        );
      },
    );
  }

  Widget listItem(BuildContext context, int index) {
    final EventData _eventData =
        EventData(event: _varselList[index].event, iconSize: 15);

    return FlatButton(
      onPressed: () {
        Navigator.pushNamed(context, '/varsler');
      },
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _eventData.iconType ?? 'Default value',
          Text(
                _eventData.eventTitle,
                style: TextStyle(fontSize: 10),
              ) ??
              'Default value',
          Text(
            customTimeFormat.format(new DateTime.fromMillisecondsSinceEpoch(
                _varselList[index].timestamp)),
            style: TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
