import 'package:flutter/material.dart';
import 'package:toku/models/toku_model.dart';
import 'package:toku/widgets/item.dart';

// ignore: must_be_immutable
class FamilyPage extends StatelessWidget {
  FamilyPage({Key? key}) : super(key: key);

  final List<Item> familyList = [
    Item(
      sound: 'father.wav',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'inchi',
      enName: 'one',
    ),
    Item(
      sound: 'daughter.wav',
      image: "assets/images/numbers/number_two.png",
      jpName: "Ni",
      enName: "two",
    ),
    Item(
      sound: 'grand father.wav',
      image: "assets/images/numbers/number_three.png",
      jpName: "San",
      enName: "three",
    ),
    Item(
      sound: 'mother.wav',
      image: "assets/images/numbers/number_four.png",
      jpName: "Shi",
      enName: "four",
    ),
    Item(
      sound: 'grand mother.wav',
      image: "assets/images/numbers/number_five.png",
      jpName: "Go",
      enName: "five",
    ),
    Item(
        sound: 'older bother.wav',
        image: "assets/images/numbers/number_six.png",
        jpName: "Roku",
        enName: "six"),
    Item(
        sound: 'older sister.wav',
        image: "assets/images/numbers/number_seven.png",
        jpName: "Sebun",
        enName: "seven"),
    Item(
        sound: 'younger brohter.wav',
        image: "assets/images/numbers/number_eight.png",
        jpName: "Hachi",
        enName: "eight"),
    Item(
        sound: 'younger sister.wav',
        image: "assets/images/numbers/number_nine.png",
        jpName: "Kyu",
        enName: "nine"),
    Item(
        sound: 'son.wav',
        image: "assets/images/numbers/number_ten.png",
        jpName: 'Ju',
        enName: "ten")
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
