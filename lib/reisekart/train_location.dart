import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


class TrainLocation extends StatefulWidget {

void fetchJson() async{
    var url = 'https://api.entur.io/realtime/v1/rest/vm';

  // Await the http get response, then decode the json-formatted response.
  var response = await http.get(url);
  if (response.statusCode == 200) {
  //final myTransformer = Xml2Json();
  //myTransformer.parse(response.body);
  print(response.body);


   // var jsonResponse = convert.jsonDecode(response.body);
    //var itemCount = jsonResponse['totalItems'];
   // print(jsonResponse);
  }
}

  @override
  _TrainLocationState createState() => _TrainLocationState();
}

class _TrainLocationState extends State<TrainLocation> {
  @override
  Widget build(BuildContext context) {




    return Container(
      
    );
  }
}