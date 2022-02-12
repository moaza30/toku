import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';
import 'package:toku/views/widgets/item_details.dart';

class ColorsScreen extends StatelessWidget {
  static const routeName = 'ColorsScreen';
  final List<Item> colors = [
    Item(
      image: 'assets/images/colors/color_black.png',
      enName: 'Black',
      jpName: 'Burakku',
      sound: 'black.wav',
    ),
    Item(
      image: 'assets/images/colors/color_brown.png',
      enName: 'Brown',
      jpName: 'Chairo',
      sound: 'brown.wav',
    ),
    Item(
      image: 'assets/images/colors/color_dusty_yellow.png',
      enName: 'Dusty Yellow',
      jpName: 'Hokori ppoi kiiro',
      sound: 'dusty yellow.wav',
    ),
    Item(
      image: 'assets/images/colors/color_gray.png',
      enName: 'Gray',
      jpName: 'Gurē',
      sound: 'gray.wav',
    ),
    Item(
      image: 'assets/images/colors/color_green.png',
      enName: 'Green',
      jpName: 'Midori',
      sound: 'green.wav',
    ),
    Item(
      image: 'assets/images/colors/color_red.png',
      enName: 'Red',
      jpName: 'Aka',
      sound: 'red.wav',
    ),
    Item(
      image: 'assets/images/colors/color_white.png',
      enName: 'White',
      jpName: 'Shiroi',
      sound: 'white.wav',
    ),
    Item(
      image: 'assets/images/colors/yellow.png',
      enName: 'Yellow',
      jpName: 'Kiiro',
      sound: 'yellow.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: Color(0xff64322B),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ItemDetails(
            colors[index],
            'assets/sounds/colors/',
            Color(0xff7E3FA3),
          );
        },
      ),
    );
  }
}
