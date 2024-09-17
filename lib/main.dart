import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(child: Text('Ask Me Anything', style: TextStyle(color: Colors.white),)),
        backgroundColor: Colors.blue[900],
      ),
      body: EightBallPage(),
    ),
  ),
);

class EightBallPage extends StatefulWidget {
  @override
  _EightBallPageState createState() => _EightBallPageState();
}

class _EightBallPageState extends State<EightBallPage> {
  int ballImageNumber = 1;
  void onBallPress() {
    setState(() {
      ballImageNumber = 1 + Random().nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          onBallPress();
        },
        child: Image.asset("images/ball$ballImageNumber.png"),
      ),
    );
  }
}