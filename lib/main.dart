import 'package:flutter/material.dart';
import 'package:login_screen/login_page.dart';
//import 'package:login_screen/test.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginForm(),
    );
  }
}
