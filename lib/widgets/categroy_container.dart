import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Categroy extends StatelessWidget {
  String? text;
  Color? color;
  Function()? onClick;
  Categroy({Key? key, this.text, this.color, this.onClick}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        color: color,
        height: 60,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
