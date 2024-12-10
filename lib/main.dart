import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor: Colors.redAccent,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;

  void randomNum(){
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  randomNum();
                  print('left buton got pressed');
                  print('left buton got pressed now it turns to ${leftDiceNumber}');
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  randomNum();
                  print('right buton got pressed');
                  print('right buton got pressed now it turns to ${rightDiceNumber}');
                },
                child: Image.asset('images/dice$rightDiceNumber.png'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
