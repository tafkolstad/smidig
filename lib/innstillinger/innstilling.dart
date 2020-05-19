import 'package:flutter/material.dart';

class Innstilling extends StatefulWidget {
  final String firstText;
  final String secondText;
  final Color firstTextColor;
  final Color secondTextColor;

  Innstilling(
      {this.firstText,
      this.firstTextColor,
      this.secondText = '',
      this.secondTextColor = Colors.black});

  @override
  _InnstillingState createState() => _InnstillingState();
}

class _InnstillingState extends State<Innstilling> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RichText(
                text: TextSpan(
                  text: widget.firstText,
                  style: TextStyle(
                    color: widget.firstTextColor,
                    fontFamily: 'Ebrima',
                    fontSize: 16.0,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: widget.secondText,
                      style: TextStyle(
                        color: widget.secondTextColor,
                      ),
                    ),
                  ],
                ),
              ),
              Switch(
                value: _isSwitched,
                activeTrackColor: Color(0xff28BDA9),
                onChanged: (val) => {setState(() => _isSwitched = val)},
                activeColor: Colors.white,
              ),
            ],
          ),
          Divider(
            height: 5.0,
            color: Colors.black54,
            endIndent: 10.0,
          ),
        ],
      ),
    );
  }
}
