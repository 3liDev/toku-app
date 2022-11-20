import 'package:flutter/material.dart';
import 'package:toku/models/toku_model.dart';
import 'package:toku/widgets/item.dart';

// ignore: must_be_immutable
class PhrasesPage extends StatelessWidget {
  PhrasesPage({Key? key}) : super(key: key);

  final List<Item> familyList = [
    Item(
      sound: 'father.wav',
      jpName: 'inchi',
      enName: 'one',
    ),
    Item(
      sound: 'daughter.wav',
      jpName: "Ni",
      enName: "two",
    ),
    Item(
      sound: 'grand father.wav',
      jpName: "San",
      enName: "three",
    ),
    Item(
      sound: 'mother.wav',
      jpName: "Shi",
      enName: "four",
    ),
    Item(
      sound: 'grand mother.wav',
      jpName: "Go",
      enName: "five",
    ),
    Item(sound: 'older bother.wav', jpName: "Roku", enName: "six"),
    Item(sound: 'older sister.wav', jpName: "Sebun", enName: "seven"),
    Item(sound: 'younger brohter.wav', jpName: "Hachi", enName: "eight"),
    Item(sound: 'younger sister.wav', jpName: "Kyu", enName: "nine"),
    Item(sound: 'son.wav', jpName: 'Ju', enName: "ten")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text("Numbers"),
        ),
        body: ListView.builder(
          itemCount: familyList.length,
          itemBuilder: (context, index) {
            return ListItem(
              item: familyList[index],
              color: Colors.blue[200],
              itemType: 'assets/sounds/family_members/',
            );
          },
        ));
  }
}
