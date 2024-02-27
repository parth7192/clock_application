import 'package:clock_application/views/screens/clock_page.dart';
import 'package:clock_application/views/screens/game_page.dart';
import 'package:clock_application/views/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.red,
      ),
      routes: {
        '/': (context) => const HomePage(),
        'game_page': (context) => const GamePage(),
        'clock_page': (context) => const ClockPage(),
      },
    );
  }
}
