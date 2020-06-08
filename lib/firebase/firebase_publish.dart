import 'package:firebase_database/firebase_database.dart';

class FirebasePublish {

  void pushStoppestedToDatabase(tid, stoppested, stopnumber) async {
    FirebaseDatabase.instance.reference().child('Destinations').push().set({
      'tid': tid,
      'stoppested': stoppested,
      'stopnumber': stopnumber,
    });
  }

  void pushVarselToDatabase(eventType, subtitle,) async {
    FirebaseDatabase.instance.reference().child('Events').push().set({
      'subtitle': subtitle,
      'eventType': eventType,
      'timestamp': ServerValue.timestamp,
    });
  }
}
