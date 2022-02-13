import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';
import 'package:toku/views/widgets/item_details.dart';

class PhrasesScreen extends StatelessWidget {
  static const routeName = 'PhrasesScreen';
  final List<Item> numList = [
    Item(
      enName: 'Hello',
      jpName: 'Konnichiwa  こんにちは',
      sound: 'hello.mp3',
    ),
    Item(
      enName: 'Thank you',
      jpName: 'Arigatō  ありがとう',
      sound: 'thank_you.mp3',
    ),
    Item(
      enName: 'Excuse me',
      jpName: 'Sumimasen  すみません',
      sound: 'excuse_me.mp3',
    ),
    Item(
      enName: 'Please',
      jpName: 'Dōzo  どうぞ',
      sound: 'please.mp3',
    ),
    Item(
      enName: 'Cheers!',
      jpName: 'Kampai!  乾杯！',
      sound: 'cheers.mp3',
    ),
    Item(
      enName: 'Goodbye',
      jpName: 'Sayōnara  さようなら',
      sound: 'goodbye.mp3',
    ),
    Item(
      enName: "That's good",
      jpName: 'Yokatta  よかった',
      sound: 'thats_good.mp3',
    ),
    Item(
      enName: 'Yes',
      jpName: 'Hai  はい',
      sound: 'yes.mp3',
    ),
    Item(
      enName: 'No',
      jpName: 'Iie  いいえ',
      sound: 'no.mp3',
    ),
    Item(
      enName: 'Very good',
      jpName: 'Totemo yoi  とても良い',
      sound: 'very_good.mp3',
    ),
    Item(
      enName: 'The check, please',
      jpName: 'Okanjō onegai shimasu\nお勘定お願いします',
      sound: 'the_check.mp3',
    ),
    Item(
      enName: 'Good morning',
      jpName: 'Ohayō  おはよう',
      sound: 'good_morning.mp3',
    ),
    Item(
      enName: 'Good night',
      jpName: 'Oyasumi nasai  おやすみなさい',
      sound: 'good_night.mp3',
    ),
    Item(
      enName: 'See you later',
      jpName: 'Jā mata ne  じゃあまたね',
      sound: 'later.mp3',
    ),
    Item(
      enName: 'Where is the bathroom?',
      jpName: 'Otearai wa doko desu ka?\nお手洗いはどこですか',
      sound: 'bathroom.mp3',
    ),
    Item(
      enName: 'How much is it?',
      jpName: 'Ikura desu ka?  いくらですか',
      sound: 'how_much.mp3',
    ),
    Item(
      enName: 'How are you feeling?',
      jpName: 'Go kibun wa ikagadesu ka\nご気分はいかがですか',
      sound: 'how_are_you_feeling.wav',
    ),
    Item(
      enName: 'What is your name?',
      jpName: 'Namae wa nani?  名前は何？',
      sound: 'what_is_your_name.wav',
    ),
    Item(
      enName: 'Where are you going?',
      jpName: 'Doko ni iku no?  どこに行くの？',
      sound: 'where_are_you_going.wav',
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
          'Phrases',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffFFFFFF),
      ),
      body: ListView.builder(
        itemCount: numList.length,
        itemBuilder: (context, index) {
          return ItemDetails(
            numList[index],
            'assets/sounds/phrases/',
          );
        },
      ),
    );
  }
}
