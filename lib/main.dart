import 'package:flutter/material.dart';
import 'package:flutter_web_squid_game/pages/home.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto',brightness: Brightness.dark),
      home: const Home(),
    );
  }
}