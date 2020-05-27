import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:vy_test/betjening/textcontainer.dart';
import 'package:vy_test/layout/colors.dart';
import 'package:vy_test/layout/layout.dart';

class Betjening extends StatefulWidget {
  static const TextStyle _hintTextStyle = TextStyle(
    color: textColorMenu,
    fontFamily: 'Ebrima',
    fontSize: 15.0,
  );

  static const TextStyle _inputTextStyle = TextStyle(
    color: textColorGrey,
    fontFamily: 'Ebrima',
    fontSize: 15.0,
  );

  @override
  _BetjeningState createState() => _BetjeningState();
}

class _BetjeningState extends State<Betjening> {
  String _dropdownValue;

  final TextEditingController textEditingController = TextEditingController();
  final database = FirebaseDatabase.instance.reference();

  void writeToDatabase(String category, String message) async {
    database.child("Henvendelser").push().set({
      'Kategori': category,
      'Melding': message,
    });
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Text> _items = [
      Text(
        'Temperatur',
        style: Betjening._inputTextStyle,
      ),
      Text(
        'Wi-fi',
        style: Betjening._inputTextStyle,
      ),
    ];

    final double _buttonSidePadding = MediaQuery.of(context).size.width * 0.30;
    final double _buttonTopPadding = MediaQuery.of(context).size.height * 0.02;
    final double _buttonBottomPadding =
        MediaQuery.of(context).size.height * 0.04;
    final double _bodyPadding = MediaQuery.of(context).size.height * 0.036;
    final double _textPadding = MediaQuery.of(context).size.height * 0.025;

    return GestureDetector(
      onTap: (){
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Layout(
        appBarText: 'Min Reise',
        customBody: Padding(
          padding: EdgeInsets.all(_bodyPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                child: ListView(
                  children: <Widget>[
                    Text(
                      'Kontakt betjening',
                      style: TextStyle(
                        color: textColorTitle,
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
                        color: textColorDarkBlue,
                      ),
                    ),
                    SizedBox(
                      height: 44.0,
                    ),
                    TextContainer(
                      customChild: DropdownButtonHideUnderline(
                        child: ButtonTheme(
                          alignedDropdown: true,
                          child: DropdownButton<String>(
                            dropdownColor: textContainerColor,
                            hint: Text(
                              'Hva vil du si fra om?',
                              style: Betjening._hintTextStyle,
                            ),
                            isExpanded: true,
                            value: _dropdownValue,
                            onChanged: (String val) {
                              setState(() {
                                _dropdownValue = val;
                              });
                            },
                            items: _items.map<DropdownMenuItem<String>>((val) {
                              return DropdownMenuItem<String>(
                                value: val.data,
                                child: val,
                              );
                            }).toList(),
                          ),
                        ),
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
                          contentPadding: EdgeInsets.all(_textPadding),
                          border: InputBorder.none,
                          hintText: 'Skriv inn din melding...',
                          hintStyle: Betjening._hintTextStyle,
                        ),
                      ),
                      customHeight: 155.0,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          _buttonSidePadding,
                          _buttonTopPadding,
                          _buttonSidePadding,
                          _buttonBottomPadding),
                      child: ButtonTheme(
                        height: 45.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        child: RaisedButton(
                          color: vyColorGreen,
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
                            writeToDatabase(
                                _dropdownValue, textEditingController.text);

                            return showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  content: Text('Henvendelsen er sendt'),
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
                        color: textColorDarkBlue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
