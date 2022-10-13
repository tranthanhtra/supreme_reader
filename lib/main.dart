import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supreme_reader/features/home/view/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Supreme Reader',
      theme: ThemeData(),
      home: home(),
    );
  }

  Widget home() {
    return HomeScreen();
  }
}
