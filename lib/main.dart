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
        body: SafeArea(
          child: Center(
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(20.0),
              child: Form(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("Please enter your Login details"),
                    SizedBox(
                      height: 50,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: "Email addresss",
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Secret password",
                          labelText: "Password",
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      disabledColor: Colors.green[900],
                      disabledTextColor: Colors.white,
                      padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                      splashColor: Colors.blueAccent,
                      child: Text("Login"),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyContainer extends Form {}
