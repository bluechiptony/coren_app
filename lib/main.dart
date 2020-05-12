import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Montserrat'),
    home: Login(),
  ));
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      color: Colors.green[900],
                      textColor: Colors.white,
                      disabledColor: Colors.green[900],
                      disabledTextColor: Colors.white,
                      padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                      splashColor: Colors.lightGreenAccent[900],
                      child: Text("LOGIN"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Dashboard()));
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPassword()));
                      },
                      child: Text("Forgot password"),
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

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text("Dashboard"),
      ),
      body: SafeArea(
        child: Center(
          child: Card(
            child: Row(
              children: <Widget>[
                RaisedButton(
                  child: Text("Go Back"),
                  onPressed: () {
//                        logic to go back
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.green[900],
        body: SafeArea(
          child: Center(
            child: Card(
              margin: EdgeInsets.all(20.0),
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image(
                      image: AssetImage("images/coren-logo.jpg"),
                      height: 30,
                    ),
                    SizedBox(height: 20.0),
                    Text("Please enter you email address"),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: "Email addresss",
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      color: Colors.green[900],
                      textColor: Colors.white,
                      disabledColor: Colors.green[900],
                      disabledTextColor: Colors.white,
                      padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                      splashColor: Colors.lightGreenAccent,
                      child: Text("RECOVER PASSWORD"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(height: 20.0),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text("Go back"),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class MyContainer extends Form {}
