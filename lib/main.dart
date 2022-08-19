import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.deepPurple[400],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        centerTitle: true,
        title: Text("Dicee"),
      ),
      body: Dicee(),
    ),
  ));
}

class Dicee extends StatefulWidget {
  const Dicee({Key? key}) : super(key: key);

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
// ignore: non_constant_identifier_names
  int Button1 = 6;
  // ignore: non_constant_identifier_names
  int Button2 = 6;
  void fun() {
    setState(() {
      Button1 = Random().nextInt(6) + 1;
      Button2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                fun();
              },
              child: Image(
                image: AssetImage('assets/images/inverted-dice-$Button1.png'),
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                fun();
              },
              child: Image(
                image: AssetImage('assets/images/inverted-dice-$Button2.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
