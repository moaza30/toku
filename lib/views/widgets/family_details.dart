import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';
import 'package:audioplayers/audioplayers.dart';

class FamilyItem extends StatelessWidget {
  final Item number;

  FamilyItem(this.number);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff538033),
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFEF6DB),
              child: Image.asset(number.image!)),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    number.jpName!,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    number.enName!,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {
                try {
                  AudioCache player =
                      AudioCache(prefix: 'assets/sounds/family_members/');
                  player.play(number.sound!);
                } catch (e) {
                  print(e);
                }
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
