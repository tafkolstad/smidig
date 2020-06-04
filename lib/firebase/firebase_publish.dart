import 'package:firebase_database/firebase_database.dart';

class FirebasePublish {

  void pushStoppestedToDatabase(tid, stoppested) async {
    FirebaseDatabase.instance.reference().child('Destinations').push().set({
      'tid': tid,
      'stoppested': stoppested,
    });
  }

  void pushVarselToDatabase(eventType, subtitle,) async {
    FirebaseDatabase.instance.reference().child('Events').push().set({
      'subtitle': subtitle,
      'eventType': eventType, //info, delayed or warning
      'timestamp': ServerValue.timestamp,
    });
  }
}
