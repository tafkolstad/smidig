import 'package:flutter/material.dart';
import 'package:vy_test/layout/colors.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:vy_test/mat/mat_item.dart';

class Mat extends StatelessWidget {
  final List<Widget> matItems = [
    MatItem(
      text: 'Påsmurt',
      imagePath: 'mat_påsmurt.png',
    ),
    MatItem(
      text: 'Kalde småretter',
      imagePath: 'mat_kalde_småretter.png',
    ),
    MatItem(
      text: 'Varme småretter',
      imagePath: 'mat_varme_småretter.png',
    ),
    MatItem(
      text: 'Middagsretter',
      imagePath: 'mat_middagsretter.png',
    ),
    MatItem(
      text: 'Barnemeny',
      imagePath: 'mat_barnemeny.png',
    ),
    MatItem(
      text: 'Bakst og desserter',
      imagePath: 'mat_bakst_og_desserter.png',
    ),
    MatItem(
      text: 'Snacks',
      imagePath: 'mat_snacks.png',
    ),
    MatItem(
      text: 'Drikke',
      imagePath: 'mat_drikke.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final _phoneHeight = MediaQuery.of(context).size.height;
    final _phoneWidth = MediaQuery.of(context).size.width;

    return Layout(
      appBarText: 'Min Reise',
      customBody: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(_phoneHeight * 0.03),
            child: Text(
              'Meny',
              style: TextStyle(
                color: textColorTitle,
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Raleway',
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(left: _phoneWidth * 0.04, bottom: _phoneHeight * 0.03,),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                children: matItems,
                mainAxisSpacing: _phoneHeight * 0.02,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
