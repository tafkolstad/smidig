import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:vy_test/billetter/billetter.dart';

class CustomBottomBar extends StatelessWidget {
  static const List<BottomNavigationBarItem> _navigationBarItems = [
    BottomNavigationBarItem(
      icon: Icon(
        OMIcons.home,
      ),
      title: Text(
        'Reisesøk',
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        OMIcons.apps,
      ),
      title: Text(
        'Ruter',
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        OMIcons.localActivity,
      ),
      title: Text(
        'Billetter',
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        OMIcons.starBorder,
      ),
      title: Text(
        'Favoritter',
      ),
    ),
    BottomNavigationBarItem(
      icon: Icon(
        OMIcons.personOutline,
      ),
      title: Text(
        'Profil',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    void _onBilletterTapped(int index) {
      if (index == 2) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => Billetter()));
      }
    }

    return BottomNavigationBar(
      selectedItemColor: Color(0xFF00957A),
      type: BottomNavigationBarType.fixed,
      currentIndex: 2,
      onTap: _onBilletterTapped,
      items: _navigationBarItems,
    );
  }
}
