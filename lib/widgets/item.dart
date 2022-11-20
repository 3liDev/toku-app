import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/toku_model.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.color,
    required this.item,
    required this.itemType,
  }) : super(key: key);

  final Color? color;
  final Item item;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return item.image == null
        ? Container(
            height: 70,
            color: color,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.jpName,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        item.enName,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {
                    try {
                      AudioCache player = AudioCache(prefix: itemType);
                      player.play(item.sound);
                    } catch (e) {
                      // ignore: avoid_print
                      print("e");
                    }
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        : Container(
            height: 70,
            color: color,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(
                    item.image!,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.jpName,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        item.enName,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {
                    try {
                      AudioCache player = AudioCache(prefix: itemType);
                      player.play(item.sound);
                    } catch (e) {
                      // ignore: avoid_print
                      print("e");
                    }
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
  }
}
