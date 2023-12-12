import 'package:flutter/material.dart';
import 'package:salah/home.dart';
import 'package:salah/modle2.dart';
import 'package:salah/screen2.dart';

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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => Home(),
        "screen2go": (context) => screen2(),
        "mod2": (context) => mode2(),
      },
      //57:59 / 1:30:55
    );
  }
}
