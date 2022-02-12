import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';
import 'package:toku/views/widgets/family_details.dart';

class FamilyScreen extends StatelessWidget {
  static const routeName = 'FamilyScreen';
  final List<Item> famList = [
    Item(
      image: 'assets/images/family_members/family_father.png',
      enName: 'Fahter',
      jpName: 'Chichioya',
      sound: 'father.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_mother.png',
      enName: 'Mother',
      jpName: 'Musume',
      sound: 'mother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_grandfather.png',
      enName: 'Grand Father',
      jpName: 'Ojīsan',
      sound: 'grand father.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_grandmother.png',
      enName: 'Grand Mother',
      jpName: 'Sobo',
      sound: 'grand mother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_son.png',
      enName: 'Son',
      jpName: 'Musuko',
      sound: 'son.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_daughter.png',
      enName: 'Daughter',
      jpName: 'Musume',
      sound: 'daughter.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_older_brother.png',
      enName: 'Older Brother',
      jpName: 'Nīsan',
      sound: 'older brother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_older_sister.png',
      enName: 'Older Sister',
      jpName: 'Ane',
      sound: 'older sister.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_younger_brother.png',
      enName: 'younger Brother',
      jpName: 'Otōto',
      sound: 'younger brother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_younger_sister.png',
      enName: 'Younger Sister',
      jpName: 'Imōto',
      sound: 'younger sister.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family members'),
        backgroundColor: Color(0xff64322B),
      ),
      body: ListView.builder(
        itemCount: famList.length,
        itemBuilder: (context, index) {
          return FamilyItem(famList[index]);
        },
      ),
    );
  }
}
