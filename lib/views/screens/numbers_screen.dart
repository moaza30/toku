import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';
import 'package:toku/views/widgets/item_details.dart';

class NumberScreen extends StatelessWidget {
  static const routeName = 'NumberScreen';
  final List<Item> numList = [
    Item(
      image: 'assets/images/numbers/number_one.png',
      enName: 'one',
      jpName: 'ichi',
      sound: 'number_one_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_two.png',
      enName: 'two',
      jpName: 'Ni',
      sound: 'number_two_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_three.png',
      enName: 'three',
      jpName: 'San',
      sound: 'number_three_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_four.png',
      enName: 'four',
      jpName: 'Shi',
      sound: 'number_four_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_five.png',
      enName: 'five',
      jpName: 'Go',
      sound: 'number_five_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_six.png',
      enName: 'six',
      jpName: 'Roku',
      sound: 'number_six_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_seven.png',
      enName: 'seven',
      jpName: 'Sebun',
      sound: 'number_seven_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_eight.png',
      enName: 'eight',
      jpName: 'Hachi',
      sound: 'number_eight_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_nine.png',
      enName: 'nine',
      jpName: 'Kyū',
      sound: 'number_nine_sound.mp3',
    ),
    Item(
      image: 'assets/images/numbers/number_ten.png',
      enName: 'ten',
      jpName: 'Jū',
      sound: 'number_ten_sound.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text(
          'Numbers',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffFFFFFF),
      ),
      body: ListView.builder(
        itemCount: numList.length,
        itemBuilder: (context, index) {
          return ItemDetails(
            numList[index],
            'assets/sounds/numbers/',
          );
        },
      ),
    );
  }
}
