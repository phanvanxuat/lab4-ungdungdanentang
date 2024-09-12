import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF4597f9),
          appBar: AppBar(
            backgroundColor: Color(0xFF2A4FAB),
            title: const Text(
              'Ask Me Anything',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: const TitlePage()),
    ),
  );
}

class TitlePage extends StatefulWidget {
  const TitlePage({super.key});

  @override
  State<TitlePage> createState() => _TitlePageState();
}

class _TitlePageState extends State<TitlePage> {
  int titlePageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          setState(() {
            titlePageNumber = Random().nextInt(5) + 1; //1-5
          });
        },
        child: Image.asset('images/ball$titlePageNumber.png'),
      ),
    );
  }
}
