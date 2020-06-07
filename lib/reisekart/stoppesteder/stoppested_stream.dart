import 'package:vy_test/layout/colors.dart';
import 'package:vy_test/stoppesteder/model/Stoppesteder_Model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class StoppestedStream extends StatelessWidget {
  Destinasjon destinasjon = Destinasjon();
  final customTimeFormat = new DateFormat('HH:mm');
  
   static int nextStop = 2;

  var _destinationRef = FirebaseDatabase.instance
      .reference()
      .child('Destinations')
      .orderByChild('stopnumber')
      .startAt(nextStop)
      .endAt(nextStop+2)
      .limitToFirst(17);

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
                    stopnumber: value['stopnumber']
                  ),
                );
              },
            );
          }
        }
        return Column(
          children: <Widget>[
            Flexible(
              child: ListView.separated(
               
                  separatorBuilder: (context, index) => Divider(
                        color: Colors.black45,
                        height: 0.01,
                        thickness: 0.3,
                      ),
                  addAutomaticKeepAlives: false,
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
   
    nextStopIcon(isNext) {
      if (isNext == '') {
        return Icon(
          Icons.fiber_manual_record,
          color: vyColorDarkGreen,
          size: 6,
        );
      } else {
        return Icon(
          Icons.fiber_manual_record,
          color: Colors.white,
          size: 6,
        );
      }
    }
    nextStopText(isNext, toPrint){
      if(isNext == nextStop){
        return Text(toPrint, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 11));
      }else{
        return Text(toPrint, style: TextStyle(fontWeight: FontWeight.w300 ,fontSize: 11));
      }
    }

    return FlatButton(
      onPressed: () {
        Navigator.pushNamed(context, '/stoppesteder');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
             SizedBox(width: 5,),
          nextStopText(_destinationList[index].stopnumber,customTimeFormat.format(new DateTime.fromMillisecondsSinceEpoch(
                _destinationList[index].tid)),),
          SizedBox(width: 3,),
          nextStopIcon(_destinationList[index].stoppested),
          SizedBox(width: 2,),
          nextStopText(_destinationList[index].stopnumber,_destinationList[index].stoppested)
        ],
      ),
    );
  }
}
