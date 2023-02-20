import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  var spacing = SizedBox(height: 40);

  @override
  State<HomePage> createState() => _MyWidgetState();
}

void setState(Null Function() param0) {}

class _MyWidgetState extends State<HomePage> {
  String playerOne = 'paper';
  String playerTwo = 'rock';

  void play() {
    List<String> signs = ['rock', 'paper', 'scissors'];

    int playerOneNum = Random().nextInt(3);
    int playerTwoNum = Random().nextInt(3);

    setState(() {
      playerOne = signs[playerOneNum];
      playerTwo = signs[playerTwoNum];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ROCK PAPER SCISSORS'),
        backgroundColor: Color.fromARGB(255, 255, 144, 34),
      ),
      backgroundColor: Color.fromARGB(255, 240, 205, 152),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/$playerOne.png',
                    height: 150,
                  ),
                  SizedBox(height: 30),
                  Text('Player 1'),
                ],
              ),
              SizedBox(width: 50),
              Column(
                children: [
                  Image.asset('assets/images/$playerTwo.png', height: 150),
                  SizedBox(height: 30),
                  Text('Player 2'),
                ],
              )
            ],
          ),
          SizedBox(height: 40),
          ElevatedButton(
              onPressed: () {
                play();
              },
              child: Text('Play')),
        ],
      ),
    );
  }
}
