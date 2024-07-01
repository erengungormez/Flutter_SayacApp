import 'package:flutter/material.dart';
import 'package:flutter_learning/screens/home_screen.dart';

void main(List<String> args) {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Montserrat"),
      home: const HomeScreen(),
    );
  }
}
