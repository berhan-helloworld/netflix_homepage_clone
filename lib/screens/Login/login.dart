import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/Home/widgets/netflix_tabbar.dart';

import '../../styles.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff191919),
      appBar: AppBar(
        backgroundColor: Color(0xff1b1b1b),
        title: Image.asset(
          "assets/images/logo.png",
          width: 120,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(right: 40, left: 40),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                style:
                    kTextFieldStyle.copyWith(decoration: TextDecoration.none),
                autofocus: true,
                decoration: InputDecoration(
                  hintText: "E-mail",
                  hintStyle: kTextFieldStyle.copyWith(
                    decoration: TextDecoration.none,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                style:
                    kTextFieldStyle.copyWith(decoration: TextDecoration.none),
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle:
                      kTextFieldStyle.copyWith(decoration: TextDecoration.none),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                padding: EdgeInsets.only(top: 12, bottom: 12),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NetflixTabBar()));
                },
                color: Color(0xFFe50914),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  "Forget Password",
                  style: kTextFieldStyle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
