import 'package:flutter/material.dart';
import 'package:toku/models/toku_model.dart';
import 'package:toku/widgets/item.dart';

// ignore: must_be_immutable
class NumberPage extends StatelessWidget {
  NumberPage({Key? key}) : super(key: key);

  final List<Item> numberList = [
    Item(
      sound: 'number_one_sound.mp3',
      image: 'assets/images/numbers/number_one.png',
      jpName: 'inchi',
      enName: 'one',
    ),
    Item(
      sound: 'number_two_sound.mp3',
      image: "assets/images/numbers/number_two.png",
      jpName: "Ni",
      enName: "two",
    ),
    Item(
      sound: 'number_three_sound.mp3',
      image: "assets/images/numbers/number_three.png",
      jpName: "San",
      enName: "three",
    ),
    Item(
      sound: 'number_four_sound.mp3',
      image: "assets/images/numbers/number_four.png",
      jpName: "Shi",
      enName: "four",
    ),
    Item(
      sound: 'number_five_sound.mp3',
      image: "assets/images/numbers/number_five.png",
      jpName: "Go",
      enName: "five",
    ),
    Item(
        sound: 'number_six_sound.mp3',
        image: "assets/images/numbers/number_six.png",
        jpName: "Roku",
        enName: "six"),
    Item(
        sound: 'number_seven_sound.mp3',
        image: "assets/images/numbers/number_seven.png",
        jpName: "Sebun",
        enName: "seven"),
    Item(
        sound: 'number_eight_sound.mp3',
        image: "assets/images/numbers/number_eight.png",
        jpName: "Hachi",
        enName: "eight"),
    Item(
        sound: 'number_nine_sound.mp3',
        image: "assets/images/numbers/number_nine.png",
        jpName: "Kyu",
        enName: "nine"),
    Item(
        sound: 'number_ten_sound.mp3',
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
          itemCount: numberList.length,
          itemBuilder: (context, index) {
            return ListItem(
              item: numberList[index],
              color: Colors.amber[100],
              itemType: 'assets/sounds/numbers/',
            );
          },
        ));
  }

  // List<Widget> getList(List<Item> number) {
  //   List<Widget> itemList = [];
  //   for (int i = 0; i < number.length; i++) {
  //     itemList.add(
  //       ListItem(
  //         number: number[i],
  //         color: Colors.amber[200],
  //       ),
  //     );
  //   }
  //   return itemList;
  // }
}
