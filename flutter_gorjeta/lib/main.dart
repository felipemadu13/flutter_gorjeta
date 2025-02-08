import 'package:flutter/material.dart';
import 'package:flutter_gorjeta/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calcula Gorjetas',
      home: const MyHomePage(title: 'Calcula Gorjetas'),
    );
  }
}
