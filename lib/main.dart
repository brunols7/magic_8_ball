import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'Ask Me Anything',
          style: TextStyle(
            color: Colors.white,
          )
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball()
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 1;

  void changeBallNumber(){
    setState((){
      ballNumber = Random().nextInt(5) +1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset('assets/images/ball$ballNumber.png'),
        onPressed: (){
          changeBallNumber();
        }
      )
    );
  }
}