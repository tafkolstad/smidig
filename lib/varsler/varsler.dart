import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';
import 'varsel.dart';

class Varsler extends StatelessWidget {
  // final dbRef = FirebaseDatabase.instance.reference();

  void databasetest() async {
    FirebaseDatabase.instance.reference().child('recent').push().set({
      'title':
          'Det ble en forsinkelse grunnet avsporing av motgående tog. Venter på lyssignal',
      'timestamp': ServerValue.timestamp
    });
  }

  var recentWarningsRef = FirebaseDatabase.instance
      .reference()
      .child('recent')
      .orderByChild('created_at') //order by creation time.
      .limitToFirst(10);

  List liste = [];

  final List<Varsel> varselList = [
    Varsel(
        title: 'Forsinkelse',
        subtitle:
            'Det ble en forsinkelse grunnet avsporing av motgående tog. Venter på lyssignal.',
        catagoryIcon: Icon(Icons.access_time, color: Colors.orange),
        catagoryColor: Colors.orange,
        isDelayed: Icon(Icons.access_time),
        timeStamp: '09:41'),
    Varsel(
        title: 'Farlig mann i vogn 2',
        subtitle: 'Ikke gå til vogn 2',
        catagoryIcon: Icon(Icons.warning, color: Colors.red),
        catagoryColor: Colors.orange,
        timeStamp: '08:14'),
    Varsel(
        title: 'Info',
        subtitle:
            'Aircondition i vogn 3 er defekt. Beklager ulempene dette medfører',
        catagoryIcon: Icon(
          Icons.info,
          color: Colors.blue,
        ),
        catagoryColor: Colors.blue,
        timeStamp: '06:30'),
  ];

  @override
  Widget build(BuildContext context) {
    return Layout(
        appBarText: 'Min reise',
        customBody: StreamBuilder(
            stream: recentWarningsRef.onValue,
            builder: (context, AsyncSnapshot<Event> snapshot) {
              if (snapshot.hasData) {
                liste.clear();
                DataSnapshot dataValues = snapshot.data.snapshot;
                Map<dynamic, dynamic> values = dataValues.value;
                values.forEach((key, values) {
                  liste.add(values);
                });

                print(liste[0]);
                /*
                snap) {
              if (snap.hasData &&
                  !snap.hasError &&
                  snap.data.snapshot.value != null) {
                getPushWarning(snap);
*/

                /*  */
              }

              return Column(
                children: <Widget>[
                  /*   RaisedButton(
                    child: Text('Trykk'),
                    onPressed: () {
                      databasetest();
                    },
                  ),*/
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
            }));
  }

  Widget listItem(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        //Side color
        Container(
          height: 62,
          width: 10,
          decoration: BoxDecoration(
              color: varselList[index].catagoryColor,
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
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 1))
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: ExpansionTile(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(varselList[index].subtitle)),
              ],
              leading: varselList[index].catagoryIcon,
              title: Text(varselList[index].title),

              //  subtitle: Text(varselList[index].subtitle),
              // contentPadding: EdgeInsets.all(8),
              // onTap: (){},
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(320, 25, 0, 0),
          child: Text(
            varselList[index].timeStamp,
            style: TextStyle(fontSize: 10),
          ),
        ),
      ],
    );
  }

  void getPushWarning(snap) async {}
}
