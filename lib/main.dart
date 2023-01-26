// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:trek_bkk_app/app/pages/history.dart';
import 'package:trek_bkk_app/app/pages/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/history': (context) => History()
      },
    );
  }
}
