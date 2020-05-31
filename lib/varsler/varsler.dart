import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:vy_test/layout/colors.dart';
import 'varsel.dart';
import 'package:intl/intl.dart';

enum IconType { DELAYED, WARNING, INFORMATION }

class Varsler extends StatelessWidget {
  // final dbRef = FirebaseDatabase.instance.reference();

  Color catagoryColor = Colors.red;

  final customTimeFormat = new DateFormat('HH:mm');

  Icon catagoryIcon = Icon(Icons.info, color: Colors.red);

  void pushToDatabase() async {
    FirebaseDatabase.instance.reference().child('recent').push().set({
      'title': 'Info',
      'subtitle':
          'Det ble en forsinkelse grunnet avsporing av motgående tog. Venter på lyssignal',
      'timestamp': ServerValue.timestamp,
      'iconType': 'delayed',
      'color': 'orange',
    });
  }

  var recentWarningsRef = FirebaseDatabase.instance
      .reference()
      .child('recent')
      .orderByChild('created_at') //order by creation time.
      .limitToFirst(10);

  List listOfAllNotifications = [];

  final List<Varsel> varselList = [];

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min reise',
      customBody: StreamBuilder(
        stream: recentWarningsRef.onValue,
        builder: (context, AsyncSnapshot<Event> snapshot) {
          if (snapshot.hasData) {
            listOfAllNotifications.clear();
            DataSnapshot dataValues = snapshot.data.snapshot;
            //  var myList = dataValues
            varselList.clear();
            Map<dynamic, dynamic> values = dataValues.value;
            if (values != null) {
              dataValues.value.forEach((key, value) {
                varselList.add(
                  Varsel(
                      title: value['title'],
                      subtitle: value['subtitle'],
                      icon: value['iconType'],
                      color: value['catagoryColor'],
                      timestamp: value['timestamp'].toString()),
                );
              });
            }
          }

          return Column(
            children: <Widget>[
              RaisedButton(
                child: Text('TRYKK'),
                onPressed: () {
                  pushToDatabase();
                  print('tryjkket!');

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
    final _verticalPhoneLength = MediaQuery.of(context).size.height;

    return Stack(
      children: <Widget>[
        //Side color
        Container(
          height: 62,
          width: 10,
          decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          margin: EdgeInsets.fromLTRB(17, 20, 0, 0),
        ),
        //Tile
        Container(
          //height: 100,
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
                    child: Text(varselList[index].subtitle ?? 'default value')),
              ],
              leading: Icon(
                Icons.access_time,
                color: Colors.orange,
              ),
              title: Text(varselList[index].title ?? 'default value'),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(_horizontalPhoneLength * 0.85, 27, 0, 0),
          child: Text(
            customTimeFormat.format(new DateTime.fromMillisecondsSinceEpoch(
                    int.parse(varselList[index].timestamp)) ??
                'default value'),
            style: TextStyle(fontSize: 10),
          ),
        ),
      ],
    );
  }

  Icon iconToShow(icon) {
    if (icon == IconType.DELAYED) {
      return Icon(Icons.access_time);
    }
    if (icon == IconType.INFORMATION) {
      return Icon(Icons.info_outline);
    }
    if (icon == IconType.WARNING) {
      return Icon(Icons.warning);
    }
  }
}
