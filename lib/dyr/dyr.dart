import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';

class Dyr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',
      customBody: Column(
        children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 4),
                child: Text(
                  'Dyr',
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Raleway',
                    color: Color(0xff383E42)
                    )
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 20, bottom: 5),
                child: Text(
                  'Kan jeg ha med kjæledyr?',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Raleway',
                    color: Color(0xff383E42),
                    fontWeight: FontWeight.bold
                    )
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 1, bottom: 10),
                child: Text(
                  'Dyrene som får bli med på tog er hund, katt, gnagere i bur, burfugl og små skilpadder. Du kan ta med akvariefisk så lenge de er forsvarlig pakket. Andre dyr er ikke ønsket på toget. Eksempler på dyr som ikke er ønsket er insekter, edderkopper, krypdyr/reptiler og amfibier.',
                  style: TextStyle(
                    fontSize: 16,
                  )
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 20, bottom: 5),
                child: Text(
                  'Førerhund',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Raleway',
                    color: Color(0xff383E42),
                    fontWeight: FontWeight.bold
                    )
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 1, bottom: 10),
                child: Text(
                  'Førerhund for blinde og svaksynte som har offentlig godkjenning reiser gratis når den er i tjeneste. Dette forutsetter at den er utstyrt med sele og håndtak for den svaksynte. Førerhund under opplæring (sammen med trener) reiser gratis når den er utstyrt med sele og håndtak. Servicehunden må ha på seg vesten sin slik at konduktøren ser at hunden er i tjeneste.',
                  style: TextStyle(
                      fontSize: 16,
                    )
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 20, bottom: 5),
                child: Text(
                  'Billett for kjæledyr',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Raleway',
                    color: Color(0xff383E42),
                    fontWeight: FontWeight.bold
                    )
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 1, bottom: 10),
                child: Text(
                  'For kjæledyr med skulderhøyde over 40 cm er prisen 50 prosent av en ordinær voksenbillett. Kjæledyr med skulderhøyde under 40 cm reiser gratis sammen med deg.',
                  style: TextStyle(
                        fontSize: 16,
                      )
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 20, bottom: 5),
                child: Text('Reise med dyr til eller fra Sverige',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        color: Color(0xff383E42),
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 1, bottom: 10),
                child: Text(
                    'Vi gjør oppmerksom på at dersom du skal reise til eller fra Sverige med dyr, er det viktig at du på forhånd setter deg godt inn i reglene til tollvesenet slik at du unngår at dyret blir satt i karantene. \n\nHunder må ha ID-merke, eget pass og dokumentert behandling mot revens dvergbendelorm. Behandlingen mot bendelorm skal være gitt av veterinær, senest 24 timer før hunden passerer grensen over til Norge. Veterinæren skal dokumentere behandlingen i hundens pass. Kravene gjelder også for deg som bare skal på dags- og helgetur til Sverige.',
                    style: TextStyle(
                      fontSize: 16,
                    )),
              ),
            ],
          ),
        ),
        ]
      ),
    );
  }
}