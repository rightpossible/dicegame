// ignore_for_file: avoid_print

import 'dart:math';

import 'package:flutter/material.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNum = 1;
  int rightDiceNum = 1;
  var random = () {
    Random random = Random();
    int randomNumber = random.nextInt(6);
    return randomNumber;
  };
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () => {
                setState(
                  () {
                    leftDiceNum = random() + 1;
                  },
                )
              },
              child: Image.asset(
                'images/dice$leftDiceNum.png',
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),
            TextButton(
              onPressed: () => {
                setState(
                  () {
                    rightDiceNum = random() + 1;
                  },
                )
              },
              child: Image.asset(
                'images/dice$rightDiceNum.png',
                color: Colors.red,
                height: 100,
                width: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
