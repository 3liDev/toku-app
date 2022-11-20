import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toku/screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.green[800],
          appBar: AppBar(
            backgroundColor: Colors.green[800],
            title: const Text("ToKu"),
          ),
          body: HomePage()),
    );
  }
}
