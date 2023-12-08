import 'package:flutter/material.dart';
import 'package:scanme_app/HM.dart';
import 'package:scanme_app/Screens/HomePage.dart';
import 'package:scanme_app/Screens/Splash1.dart';

late Size mq;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}
