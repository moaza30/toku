import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';
import 'package:toku/views/widgets/item_details.dart';

class ColorsScreen extends StatelessWidget {
  static const routeName = 'ColorsScreen';
  final List<Item> colors = [
    Item(
      image: 'assets/images/colors/color_black.png',
      enName: 'Black',
      jpName: 'Burakku  ブラック',
      sound: 'black.wav',
    ),
    Item(
      image: 'assets/images/colors/color_brown.png',
      enName: 'Brown',
      jpName: 'Chairo  茶色',
      sound: 'brown.wav',
    ),
    Item(
      image: 'assets/images/colors/color_dusty_yellow.png',
      enName: 'Dusty Yellow',
      jpName: 'Hokori ppoi kiiro \nほこりっぽい黄色',
      sound: 'dusty yellow.wav',
    ),
    Item(
      image: 'assets/images/colors/color_gray.png',
      enName: 'Gray',
      jpName: 'Gurē  グレー',
      sound: 'gray.wav',
    ),
    Item(
      image: 'assets/images/colors/color_green.png',
      enName: 'Green',
      jpName: 'Midori  緑',
      sound: 'green.wav',
    ),
    Item(
      image: 'assets/images/colors/color_red.png',
      enName: 'Red',
      jpName: 'Aka  赤',
      sound: 'red.wav',
    ),
    Item(
      image: 'assets/images/colors/color_white.png',
      enName: 'White',
      jpName: 'Shiroi  白い',
      sound: 'white.wav',
    ),
    Item(
      image: 'assets/images/colors/yellow.png',
      enName: 'Yellow',
      jpName: 'Kiiro  黄色',
      sound: 'yellow.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text(
          'Colors',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffFFFFFF),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ItemDetails(
            colors[index],
            'assets/sounds/colors/',
          );
        },
      ),
    );
  }
}
