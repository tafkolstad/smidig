import 'package:flutter/material.dart';

class Billett extends StatelessWidget {
  final String fromPlatform;
  final String toPlatform;
  final String departure;

  Billett({this.fromPlatform, this.toPlatform, this.departure});

  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
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
                        fontFamily: 'Raleway', // Does not exist in project
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Fra '),
                        TextSpan(
                            text: fromPlatform,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: ' til\n'),
                        TextSpan(
                            text: toPlatform,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                Image(
                  alignment: Alignment.topRight,
                  width: 60.0,
                  image: AssetImage('assets/vy.logo.final_primary.png'),
                ),
              ],
            ),
            Divider(
              height: 20.0,
              color: Colors.black54,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Minipris',
                    style: TextStyle(
                      fontFamily: 'Helvetica', // Does not exist in project
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF315D93),
                    ),
                  ),
                ),
                Image(
                  alignment: Alignment.centerRight,
                  width: 80.0,
                  image: AssetImage('assets/minipris_icons.png'),
                ),
              ],
            ),
            Divider(
              color: Colors.black54,
              height: 20.0,
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
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        departure,
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
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
                    width: 100.0,
                    image: AssetImage('assets/kontroll_icon.png'),
                  ),
                  onPressed: _onKontrollTapped,
                ),
              ],
            ),
            Divider(
              color: Colors.black54,
              height: 40.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Text(
                      'Min Reise',
                      style: TextStyle(
                        color: Color(0xFF109980),
                        fontSize: 24.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: _onMinReiseTapped,
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
