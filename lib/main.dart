import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent.shade100,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
        backgroundColor: Colors.red,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: FlatButton(
        onPressed: () {
          ballNumber = Random().nextInt(5) + 1;
          setState(() {
            Image.asset('images/ball$ballNumber.png');
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    ));
  }
}
