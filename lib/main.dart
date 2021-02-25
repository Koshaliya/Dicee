import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumber=1;
  int rightNumber=2;
  void rollDice(){
    setState(() {
      leftNumber=Random().nextInt(6)+1;
       rightNumber=Random().nextInt(6)+1;
    });
    
  }
  @override
  Widget build(BuildContext context) {
    

    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(onPressed: () { 
              rollDice();
             },
            child: Image.asset('images/dice$leftNumber.png')),
          ),
          Expanded(
              child: FlatButton(
            onPressed: () { 
              rollDice();
             },
            child: Image(image: AssetImage('images/dice$rightNumber.png')),
          ))
        ],
      ),
    );
  }
}


