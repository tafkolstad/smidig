import 'package:flutter/material.dart';
import 'package:vy_test/betjening/dropdown.dart';
import 'package:vy_test/betjening/textcontainer.dart';
import 'package:vy_test/layout/layout.dart';

class Betjening extends StatefulWidget {
  static const TextStyle _hintTextStyle = TextStyle(
    color: Color(0xff767575),
    fontFamily: 'Ebrima',
    fontSize: 15.0,
  );

  static const TextStyle _inputTextStyle = TextStyle(
    color: Color(0xff383E42),
    fontFamily: 'Ebrima',
    fontSize: 15.0,
  );

  @override
  _BetjeningState createState() => _BetjeningState();
}

class _BetjeningState extends State<Betjening> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBarText: 'Min Reise',
      customBody: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child: ListView(
                children: <Widget>[
                  Text(
                    'Kontakt betjening',
                    style: TextStyle(
                      color: Color(0xff383E42),
                      fontFamily: 'Raleway', // Does not exist in this project
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: 44.0,
                  ),
                  Text(
                    'Her kan du ta kontakt med besetningen for å gi tilbakemeldinger eller be om hjelp',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff5C7181),
                    ),
                  ),
                  SizedBox(
                    height: 44.0,
                  ),
                  TextContainer(
                    customChild: Dropdown(
                      hintTextStyle: Betjening._hintTextStyle,
                      inputTextStyle: Betjening._inputTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextContainer(
                    customChild: TextField(
                      controller: textEditingController,
                      style: Betjening._inputTextStyle,
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15.0),
                        border: InputBorder.none,
                        hintText: 'Skriv inn din melding...',
                        hintStyle: Betjening._hintTextStyle,
                      ),
                    ),
                    customHeight: 155.0,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.fromLTRB(125.0, 15.0, 125.0, 30.0),
                    child: ButtonTheme(
                      height: 45.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: RaisedButton(
                        color: Color(0xff56877E),
                        child: Text(
                          'Send',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Segoe UI',
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          // Temporary
                          return showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text(textEditingController.text),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Text(
                    'Hendelsen vil bli sendt til konduktøren.\nKonduktøren kan komme bort til deg.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 10.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff778895),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
