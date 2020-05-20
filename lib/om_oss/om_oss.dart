import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';

class OmOss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',
<<<<<<< Updated upstream
      customBody: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Text(
            'Om oss',
            style: TextStyle(
              color: Color(0xff383E42),
              fontFamily: 'Raleway', // Does not exist in this project
              fontSize: 30,
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              'NSB-konsernet endret navn til Vygruppen den 24.april 2019. Vygruppen er ett av Nordens største transportkonsern. Selskapet eies av den norske stat ved Samferdselsdepartementet. ',
              style: TextStyle(
                //color: Color(0xff383E42),
                //fontFamily: 'Raleway', // Does not exist in this project
                fontSize: 20,
              ),
            ))
      ]),
=======
      customBody: Column(
        children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  'Om oss',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Raleway',
                    color: Color(0xff383E42)
                    )
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 8, bottom: 30),
                child: Text(
                  'NSB-konsernet endret navn til Vygruppen den 24.april 2019. Vygruppen er ett av Nordens største transportkonsern. Selskapet eies av den norske stat ved Samferdselsdepartementet.',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Raleway',
                    color: Color(0xff383E42)
                    )
                  ),
              ),
                Padding(
                padding: const EdgeInsets.only(left: 10, right: 8),
                child: Text(
                  'Vår strategi og visjon er "Den beste reisen", og vårt hovedfokus er våre kunder og deres behov.',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Raleway',
                    color: Color(0xff383E42)
                    )
                  ),
              ),
                Padding(
                padding: const EdgeInsets.only(top: 55, bottom: 20),
                child: Text(
                  'Kontakt oss',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Raleway',
                    color: Color(0xff383E42)
                    )
                  ),
              ),
                Padding(
                padding: const EdgeInsets.only(left: 10, right: 8, bottom: 8),
                child: Text(
                  'Kundeservice',
                  style: TextStyle(
                    fontSize: 19,
                    fontFamily: 'Raleway',
                    color: Color(0xff383E42)
                    )
                  ),
              ),
                Padding(
                padding: const EdgeInsets.only(left: 10, right: 8),
                child: Text(
                  'Telefon: 90 90 80 \nE-Post:  kundeservice@vy.no',
                  style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Raleway',
                        color: Color(0xff383E42)
                      )
                  ),
              ),
                Padding(
                padding: const EdgeInsets.fromLTRB(8, 30, 8, 8),
                child: Text(
                  'Hittegods',
                  style: TextStyle(
                    fontSize: 19,
                    fontFamily: 'Raleway',
                    color: Color(0xff383E42)
                    )
                  ),
              ),
                Padding(
                padding: const EdgeInsets.only(left: 10, right: 8),
                child: Text(
                  'Telefon: 90 90 70 \nE-Post:  hittegods@vy.no',
                  style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Raleway',
                        color: Color(0xff383E42)
                      )
                  ),
              ),
            ],
          ),
        ),
        ]
      ),
>>>>>>> Stashed changes
    );
  }
}
