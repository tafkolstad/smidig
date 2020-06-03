import 'package:flutter/material.dart';
import 'package:vy_test/layout/colors.dart';

class Billett extends StatelessWidget {
  final String fromPlatform;
  final String toPlatform;
  final String departure;

  Billett({this.fromPlatform, this.toPlatform, this.departure});

  @override
  Widget build(BuildContext context) {
    final _phoneHeight = MediaQuery.of(context).size.height;
    final _phoneWidth = MediaQuery.of(context).size.width;

    void _onKontrollTapped() {
      Navigator.pushNamed(context, '/kontroll');
    }

    void _onMinReiseTapped() {
      Navigator.pushNamed(context, '/reisekart');
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400],
            blurRadius: 0.5,
            offset: Offset(0.5, 0.5),
            spreadRadius: 1.5,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: _phoneHeight * 0.02,
          horizontal: _phoneWidth * 0.05,
        ),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 21.0,
                        fontFamily: 'Raleway',
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Fra '),
                        TextSpan(
                            text: fromPlatform,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: ' til\n'),
                        TextSpan(
                          text: toPlatform,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 27.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Image(
                  alignment: Alignment.topRight,
                  width: _phoneWidth * 0.2,
                  image: AssetImage('assets/vy.logo.final_primary.png'),
                ),
              ],
            ),
            Divider(
              height: _phoneHeight * 0.03,
              color: Colors.black54,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Minipris',
                    style: TextStyle(
                      fontFamily: 'Helvetica',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF315D93),
                    ),
                  ),
                ),
                Image(
                  alignment: Alignment.centerRight,
                  width: _phoneWidth * 0.2,
                  image: AssetImage('assets/minipris_icons.png'),
                ),
              ],
            ),
            Divider(
              color: Colors.black54,
              height: _phoneHeight * 0.03,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Avgang',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Raleway',
                        ),
                      ),
                      SizedBox(
                        height: _phoneHeight * 0.01,
                      ),
                      Text(
                        departure,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Raleway',
                        ),
                      ),
                    ],
                  ),
                ),
                FlatButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Image(
                    alignment: Alignment.centerRight,
                    width: _phoneWidth * 0.24,
                    image: AssetImage('assets/kontroll_icon.png'),
                  ),
                  onPressed: _onKontrollTapped,
                ),
              ],
            ),
            Divider(
              color: Colors.black54,
              height: _phoneHeight * 0.05,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5.0),
                    height: _phoneHeight * 0.075,
                    child: RaisedButton(
                      color: vyColorGreen,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Text(
                        'Min Reise',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Raleway',
                        ),
                      ),
                      onPressed: _onMinReiseTapped,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
