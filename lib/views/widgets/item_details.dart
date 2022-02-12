import 'package:flutter/material.dart';
import 'package:toku/models/item_model.dart';
import 'package:audioplayers/audioplayers.dart';

class ItemDetails extends StatelessWidget {
  final Item item;
  late String path;
  Color color;
  ItemDetails(this.item, this.path, this.color);

  void playSound(String path) {
    try {
      AudioCache player = AudioCache(prefix: path);
      player.play(item.sound!);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFEF6DB),
            child: (path == 'assets/sounds/phrases/')
                ? null
                : Image.asset(item.image!),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.jpName!,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    item.enName!,
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
                playSound(path);
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
