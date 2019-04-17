import 'package:ageru/config.dart';
import 'package:ageru/screens/auth/email_input.dart';
import 'package:ageru/screens/auth/sign_in.dart';
import 'package:ageru/widgets/fancy_gradient_button.dart';
import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';

class SignInOptionsPage extends StatefulWidget {
  SignInOptionsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignInOptionsPageState createState() => _SignInOptionsPageState();
}

class _SignInOptionsPageState extends State<SignInOptionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/signin-options.png"),
            SizedBox(
              width: double.infinity,
              child: FlatButton.icon(
                onPressed: () {},
                color: Color(0xFF4867ad),
                icon: Icon(
                  FeatherIcons.facebook,
                  color: Colors.white,
                ),
                label: Text(
                  "Continue with Facebook",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: FlatButton.icon(
                onPressed: () {},
                color: Color(0xFFcc4f40),
                icon: Icon(
                  FeatherIcons.facebook,
                  color: Colors.white,
                ),
                label: Text(
                  "Continue with Google",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: FancyGradientButton(
                child: Text("SIGN UP", style: TextStyle(color: Colors.white),),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          EmailInput()));
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlineButton(
                child: Text("SIGN IN"),
                textColor: Config.darkerGreen,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          SignIn()));
                },
                borderSide: BorderSide(
                  color: Config.darkerGreen,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("By Signing up or Logging in, you have agreed to our"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Terms & Conditions ",
                    style: TextStyle(color: Config.darkerGreen),
                  ),
                ),
                Text(" and "),
                InkWell(
                  child: Text(
                    " Privacy Policy",
                    style: TextStyle(color: Config.darkerGreen),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
