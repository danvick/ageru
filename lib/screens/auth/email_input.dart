import 'package:ageru/config.dart';
import 'package:ageru/screens/auth/create_password.dart';
import 'package:ageru/screens/auth/sign_in.dart';
import 'package:ageru/widgets/fancy_gradient_button.dart';
import 'package:ageru/widgets/fancy_screen_background.dart';
import 'package:flutter/material.dart';

class EmailInput extends StatefulWidget {
  @override
  _EmailInputState createState() => _EmailInputState();
}

class _EmailInputState extends State<EmailInput> {
  @override
  Widget build(BuildContext context) {
    return FancyScreenBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black87),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 200, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Enter your email",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.mail_outline),
                  hintText: "Email",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FancyGradientButton(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          CreatePassword()));
                },
                child: Text(
                  "NEXT",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account? "),
                  InkWell(
                    child: Text(
                      " Sign In",
                      style: TextStyle(color: Config.darkerGreen),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              SignIn()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
