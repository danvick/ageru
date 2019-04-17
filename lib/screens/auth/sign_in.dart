import 'package:ageru/config.dart';
import 'package:ageru/screens/auth/create_password.dart';
import 'package:ageru/screens/auth/email_input.dart';
import 'package:ageru/screens/home.dart';
import 'package:ageru/widgets/fancy_gradient_button.dart';
import 'package:ageru/widgets/fancy_screen_background.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Welcome Back!",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 70,
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
              TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: "Password",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  width: double.infinity,
                  child: Text(
                    "Forgot Password?",
                    textAlign: TextAlign.end,
                  )),
              SizedBox(
                height: 70,
              ),
              FancyGradientButton(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HomePage()));
                },
                child: Text(
                  "SIGN IN",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an account? "),
                  InkWell(
                    child: Text(
                      " Sign Up",
                      style: TextStyle(color: Config.darkerGreen),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => EmailInput()));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Stack(alignment: Alignment.center, children: <Widget>[
                Container(
                  height: 2,
                  decoration: BoxDecoration(
                    // color: Colors.black,
                    gradient: LinearGradient(
                      stops: [.3,.5,.7],
                        colors: [
                      Colors.transparent,
                      Colors.black,
                      Colors.transparent,
                    ])
                  ),
                ),
                Container(
                  color: Colors.white,
                  width: 40,
                  child: Text(
                    "OR",
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Sign in using",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          elevation: 8,
                          child: Icon(FeatherIcons.facebook, color: Config.facebookBlue,)),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          elevation: 8,
                          child: Icon(Icons.error, color: Config.googleRed,)),
                    ),
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
