import 'package:flutter/material.dart';
import 'package:vy_test/layout/layout.dart';
import 'package:vy_test/mat/mat_item.dart';

class Mat extends StatelessWidget {
  final List<MatItem> matItems = [
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
    return Layout(
      appBarText: 'Min Reise',
      customBody: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Meny',
              style: TextStyle(
                color: Color(0xff383E42),
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
                fontFamily: 'Raleway', // Does not exist in project
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                children: matItems,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
