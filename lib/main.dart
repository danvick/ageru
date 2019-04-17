import 'package:ageru/screens/auth/sign_in_options.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SignInOptionsPage(title: 'Flutter Demo Home Page'),
    );
  }
}
