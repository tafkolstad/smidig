import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';

class Sove extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',
      customBody: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text('Sove',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Raleway',
                        color: Color(0xff383E42))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 1, bottom: 10),
                child: Text(
                    'Sove er billetten for deg som vil reise langt og sove godt. Kom frem uthvilt.',
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 15, bottom: 5),
                child: Text('Fasiliteter',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        color: Color(0xff383E42),
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 1, bottom: 10),
                child: Text(
                    'En sovekupé med køyeseng (to soveplasser), gode madrasser, dyne og pute. I kupeen finner du strømuttak, servant, såpe, håndklær og drikkevann. Felles toalett finner du i enden av vognen.',
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 20, bottom: 5),
                child: Text('Betingelser for Sove',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        color: Color(0xff383E42),
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 1, bottom: 10),
                child: Text(
                    '- Du kan endre avreisetidspunkt helt frem til avgang. Ved endring til en dyrere avgang vil du belastes prisdifferansen.',
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 1, bottom: 10),
                child: Text(
                    '- Billetten kan endres til Flex og Pluss. Ved valg av en dyrere avgang vil du belastes prisdifferansen.',
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 1, bottom: 10),
                child: Text(
                    '- Du betaler et servicetillegg for bestillinger og endringer du gjør via betjente salgskanaler.',
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 1, bottom: 10),
                child: Text(
                    '- Sove kan ikke kombineres med andre rabatter som student eller honnør.',
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 1, bottom: 10),
                child: Text(
                    '- Rullestol og barnevogn er gratis. Du kan ta med hund og/eller sykkel om bord mot et pristillegg. Merk: Det er ikke tillatt med hund i sovekupé, med unntak av servicehund/førerhund.',
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 1, bottom: 10),
                child: Text(
                    '- Du har fire timers angrefrist fra du kjøper billetten for billetter som er kjøpt på vy.no, i appen eller fra en billettautomat, så lenge du avbestiller før togets avgangstid.',
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 20, bottom: 5),
                child: Text('Betingelser for Sove Refunderbar',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Raleway',
                        color: Color(0xff383E42),
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 1, bottom: 10),
                child: Text(
                    '- Denne billetten er refunderbar. Det betyr at du får pengene igjen hvis du avbestiller turen før avreise, uansett årsak.',
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 1, bottom: 10),
                child: Text(
                    '- Du kan du endre avreisetidspunkt helt frem til avgang. Ved endring til en dyrere avgang vil du belastes prisdifferansen.',
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 1, bottom: 10),
                child: Text(
                    '- Billetten kan endres til Flex Refunderbar og Pluss Refunderbar. Ved valg av en dyrere avgang vil du belastes prisdifferansen.',
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 1, bottom: 10),
                child: Text(
                    '- Du betaler et servicetillegg for bestillinger og endringer du gjør via betjente salgskanaler.',
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 1, bottom: 10),
                child: Text(
                    '- For Sove Refunderbar gjelder følgende rabatter: \n\t\t>  Barn: 25 prosent (barn under 6 år reiser gratis)\n\t\t>  Honnør: 25 prosent\n\t\t>  Student: 10 prosent',
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 3, top: 1, bottom: 10),
                child: Text(
                    '- Rullestol og barnevogn er gratis. Du kan ta med hund og/eller sykkel om bord mot et pristillegg. Merk: Det er ikke tillatt med hund i sovekupé, med unntak av servicehund/førerhund.',
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
