import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toku/screen/color_page.dart';
import 'package:toku/screen/family_page.dart';
import 'package:toku/screen/number_page.dart';
import 'package:toku/screen/phrases_page.dart';
import 'package:toku/widgets/categroy_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Categroy(
          text: "Numbers",
          color: Colors.lightGreen[500],
          onClick: () {
            Get.to(NumberPage());
          },
        ),
        Categroy(
          text: "Family Members",
          color: Colors.green[300],
          onClick: () {
            Get.to(FamilyPage());
          },
        ),
        Categroy(
          text: "Colors",
          color: Colors.green[400],
          onClick: () {
            Get.to(ColorPage());
          },
        ),
        Categroy(
          text: "Phrases",
          color: Colors.lightGreen[300],
          onClick: () {
            Get.to(PhrasesPage());
          },
        )
      ],
    );
  }
}
