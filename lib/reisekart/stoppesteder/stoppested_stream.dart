import 'package:vy_test/layout/colors.dart';
import 'package:vy_test/stoppesteder/model/Stoppesteder_Model.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class StoppestedStream extends StatelessWidget {
  Destinasjon destinasjon = Destinasjon();
  final customTimeFormat = new DateFormat('HH:mm');

  var _destinationRef = FirebaseDatabase.instance
      .reference()
      .child('Destinations')
      .orderByChild('stopnumber')
      .startAt(2)
      .endAt(4)
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
                        color: vyColorBlack,
                        height: 0.5,
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
    TextStyle checkTextSize() {
      /*  if (_destinationList[index].stoppested.length < 8) {
        return TextStyle(fontSize: 16);
      } else if (_destinationList[index].stoppested.length > 8 &&
          _destinationList[index].stoppested.length < 10) {
        return TextStyle(fontSize: 12);
      } else {
        return TextStyle(fontSize: 10);
      }*/
    }
    nextStopIcon(isNext) {
      if (isNext == '') {
        return Icon(
          Icons.fiber_manual_record,
          color: vyColorDarkGreen,
          size: 7,
        );
      } else {
        return Icon(
          Icons.fiber_manual_record,
          color: Colors.white,
          size: 7,
        );
      }
    }
    nextStopText(isNext){
      if(isNext == 'Oslo Lufthavn' || isNext == '16:26'){
        return Text(isNext, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 11));
      }else{
        return Text(isNext, style: TextStyle(fontWeight: FontWeight.w300 ,fontSize: 11));
      }
    }


    DateTime now = DateTime.now();
    String currentTime = DateFormat('kk:mm').format(now);

    //if(_destinationList[index].tid < currentTime )

    return FlatButton(
      onPressed: () {
        Navigator.pushNamed(context, '/stoppesteder');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          nextStopText(customTimeFormat.format(new DateTime.fromMillisecondsSinceEpoch(
                _destinationList[index].tid)),),
          SizedBox(width: 3,),
          nextStopIcon(_destinationList[index].stoppested),
          SizedBox(width: 3,),
          nextStopText(_destinationList[index].stoppested)
        ],
      ),

      /*ListTile(
        subtitle: Text(
          customTimeFormat.format(new DateTime.fromMillisecondsSinceEpoch(
              _destinationList[index].tid)),
          style: TextStyle(fontSize: 10),
        ),
        title: Text(
          _destinationList[index].stoppested,
          style: TextStyle(fontSize: 12)
        ),
        trailing: Icon(Icons.fiber_manual_record, color: vyColorBlack,),
      ),*/
    );
  }
}
