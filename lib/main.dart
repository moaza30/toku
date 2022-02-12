import 'package:flutter/material.dart';
import 'package:toku/views/screens/family_screen.dart';
import 'package:toku/views/screens/home_screen.dart';
import 'package:toku/views/screens/numbers_screen.dart';
import 'views/screens/colors_screen.dart';
import 'views/screens/phrases_screen.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toku App',
      home: HomeScreen(),
      routes: {
        NumberScreen.routeName: (context) => NumberScreen(),
        FamilyScreen.routeName: (context) => FamilyScreen(),
        ColorsScreen.routeName: (context) => ColorsScreen(),
        PhrasesScreen.routeName: (context) => PhrasesScreen(),
      },
    );
  }
}
