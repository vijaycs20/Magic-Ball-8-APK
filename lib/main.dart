import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.indigo[900],
            title: Center(
                child:
                    Text('Ask Me Anything', style: TextStyle(fontSize: 23)))),
        backgroundColor: Colors.blue[400],
        body: MagicBall())));

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int number = 1;
  void magic() {
    setState(() {
      number = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: FlatButton(
                onPressed: () {
                  magic();
                },
                child: Image.asset('images/ball$number.png'))));
  }
}
