import 'package:flutter/material.dart';
import 'package:toku/views/screens/colors_screen.dart';
import 'package:toku/views/screens/family_screen.dart';
import 'package:toku/views/screens/numbers_screen.dart';
import 'package:toku/views/screens/phrases_screen.dart';
import 'package:toku/views/widgets/category.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff64322B),
        title: const Text('Toku App'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.pushNamed(context, NumberScreen.routeName);
            },
            title: 'Numbers',
            color: Color(0xffEF9235),
          ),
          Category(
            onTap: () {
              Navigator.of(context).pushNamed(FamilyScreen.routeName);
            },
            title: 'Family Members',
            color: Color(0xff538033),
          ),
          Category(
            onTap: () {
              Navigator.of(context).pushNamed(ColorsScreen.routeName);
            },
            title: 'Colors',
            color: Color(0xff7E3FA3),
          ),
          Category(
            onTap: () {
              Navigator.of(context).pushNamed(PhrasesScreen.routeName);
            },
            title: 'Phrases',
            color: Color(0xff48A5CC),
          ),
        ],
      ),
    );
  }
}
