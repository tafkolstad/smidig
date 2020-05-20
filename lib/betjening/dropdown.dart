import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  final TextStyle hintTextStyle;
  final TextStyle inputTextStyle;

  Dropdown({this.hintTextStyle, this.inputTextStyle});

  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    List<Text> _items = [
    Text(
      'Temperatur',
      style: widget.inputTextStyle,
    ),
    Text(
      'Wi-fi',
      style: widget.inputTextStyle,
    ),
  ];

    return DropdownButtonHideUnderline(
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButton<String>(
          dropdownColor: Color(0xffE0E7F6),
          hint: Text(
            'Hva vil du si fra om?',
            style: widget.hintTextStyle,
          ),
          isExpanded: true,
          value: dropdownValue,
          onChanged: (String val) {
            setState(() {
              dropdownValue = val;
            });
          },
          items: _items.map<DropdownMenuItem<String>>((val) {
            return DropdownMenuItem<String>(
              value: val.toString(),
              child: val,
            );
          }).toList(),
        ),
      ),
    );
  }
}
