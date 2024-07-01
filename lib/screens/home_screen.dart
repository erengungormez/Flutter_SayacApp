import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 2;

  void _incrementCounter() {
    _counter++;
    setState(() {});
  }

  void _resetCounter() {
    _counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191919),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/zikirmatik.png", width: 300),
                Positioned(
                  top: 48,
                  right: 80,
                  child: _counterText(),
                ),
                _incrementButton(),
                Positioned(right: 76, bottom: 114, child: _resetButton())
              ],
            )
          ],
        ),
      ),
    );
  }

  GestureDetector _resetButton() {
    return GestureDetector(
        onTap: () {
          _resetCounter();
        },
        child: Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
        ));
  }

  Positioned _incrementButton() {
    return Positioned(
        bottom: 30,
        child: GestureDetector(
            onTap: () {
              _incrementCounter();
            },
            child: Container(
              width: 90,
              height: 90,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(60)),
            )));
  }

  Text _counterText() {
    return Text(
      _counter.toString(),
      style:
          TextStyle(fontFamily: "Schyler", fontSize: 50, color: Colors.white),
    );
  }
}
