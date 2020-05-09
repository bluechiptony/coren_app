import 'package:flutter/material.dart';

void main() {
  runApp(CorenApp());
}

class CorenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: Scaffold(
//        appBar: AppBar(
//          backgroundColor: Colors.green[900],
//          title: Text("Coren"),
//        ),
        backgroundColor: Colors.green[900],
        body: SafeArea(
          child: Center(
            child: Card(
              margin: EdgeInsets.all(20.0),
              color: Colors.white,
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image(
                        image: AssetImage("images/coren-logo.jpg"),
                        height: 30,
                      ),
                      SizedBox(height: 20.0),
                      Text("Please enter your Login details"),
                      SizedBox(
                        height: 20,
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
                        obscureText: true,
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
      ),
    );
  }
}

class MyContainer extends Form {}
