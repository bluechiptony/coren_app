import 'package:flutter/material.dart';

void main() {
  runApp(CorenApp());
}

class CorenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
//        appBar: AppBar(
//          backgroundColor: Colors.green[900],
//          title: Text("Coren"),
//        ),
        backgroundColor: Colors.green[900],
        body: Center(
          child: Image(
            image: AssetImage('images/coren-logo.jpg'),
          ),
        ),
      ),
    );
  }
}

class MyContainer extends Scaffold {}
