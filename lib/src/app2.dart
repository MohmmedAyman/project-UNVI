import 'package:flutter/material.dart';
import 'screens/signup.dart';


class App2 extends StatelessWidget{

  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'log in me',
      home: Scaffold(
        body: Signup(),
      ),
    );
  }
}
