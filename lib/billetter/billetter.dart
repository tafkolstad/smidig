import 'package:flutter/material.dart';
import 'package:vy_test/billetter/billett.dart';
import 'package:vy_test/layout/layout.dart';

class Billetter extends StatelessWidget {
  final Billett firstBillett = Billett(
    fromPlatform: 'Oslo S',
    toPlatform: 'Trondheim S',
    departure: 'i dag, 16:02',
  );
  final Billett secondBillett = Billett(
    fromPlatform: 'Trondheim S',
    toPlatform: 'Oslo S',
    departure: 'Fredag, 29. nov. 16:02',
  );

  @override
  Widget build(BuildContext context) {
    final List<Billett> billetter = [firstBillett, secondBillett];

    return Layout(
      appBarText: 'Billetter',
      appBarButtons: false,
      customBody: ListView.builder(
        itemBuilder: (context, position) {
          if (position == 0) {
            return Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Fremtidige billetter',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Helvetica', // Does not exist in project
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  billetter[position],
                ],
              ),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  billetter[position],
                ],
              ),
            );
          }
        },
        itemCount: 1,
      ),
    );
  }
}
