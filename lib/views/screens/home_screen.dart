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
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Color(0xffFFFFFF),
          title: const Text(
            'Toku App',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: [
            Category(
              onTap: () {
                Navigator.pushNamed(context, FamilyScreen.routeName);
              },
              title: '    Family \n Members',
            ),
            Category(
              onTap: () {
                Navigator.pushNamed(context, NumberScreen.routeName);
              },
              title: 'Numbers',
            ),
            Category(
              onTap: () {
                Navigator.pushNamed(context, ColorsScreen.routeName);
              },
              title: 'Colors',
            ),
            Category(
              onTap: () {
                Navigator.pushNamed(context, PhrasesScreen.routeName);
              },
              title: 'Phrases',
            ),
          ],
        ));
  }
}
