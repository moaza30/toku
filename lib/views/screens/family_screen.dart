import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';
import 'package:toku/views/widgets/item_details.dart';

class FamilyScreen extends StatelessWidget {
  static const routeName = 'FamilyScreen';
  final List<Item> famList = [
    Item(
      image: 'assets/images/family_members/family_father.png',
      enName: 'Fahter',
      jpName: 'Chichioya  父親',
      sound: 'father.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_mother.png',
      enName: 'Mother',
      jpName: 'Hahaoya  母親',
      sound: 'mother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_grandfather.png',
      enName: 'Grand Father',
      jpName: 'Ojīsan  おじいさん',
      sound: 'grand father.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_grandmother.png',
      enName: 'Grand Mother',
      jpName: 'Sobo  祖母',
      sound: 'grand mother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_son.png',
      enName: 'Son',
      jpName: 'Musuko  息子',
      sound: 'son.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_daughter.png',
      enName: 'Daughter',
      jpName: 'Musume  娘',
      sound: 'daughter.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_older_brother.png',
      enName: 'Older Brother',
      jpName: 'Nīsan  兄さん',
      sound: 'older brother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_older_sister.png',
      enName: 'Older Sister',
      jpName: 'Ane  姉',
      sound: 'older sister.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_younger_brother.png',
      enName: 'younger Brother  弟',
      jpName: 'Otōto',
      sound: 'younger brother.wav',
    ),
    Item(
      image: 'assets/images/family_members/family_younger_sister.png',
      enName: 'Younger Sister',
      jpName: 'Imōto  妹',
      sound: 'younger sister.wav',
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
          'Family members',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xffFFFFFF),
      ),
      body: ListView.builder(
        itemCount: famList.length,
        itemBuilder: (context, index) {
          return ItemDetails(
            famList[index],
            'assets/sounds/family_members/',
          );
        },
      ),
    );
  }
}
