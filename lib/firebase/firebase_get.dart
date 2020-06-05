import 'package:firebase_database/firebase_database.dart';

class FirebaseGet {

//Not working
  Future<Query> notificationRef(limit) async {
    return FirebaseDatabase.instance.reference().child('Events').limitToFirst(limit);
  }
}
