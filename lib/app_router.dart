import 'package:flutter/material.dart';
import 'package:test12/constants/strings.dart';
import 'package:test12/data/models/login.dart';
import 'package:test12/src/screens/Home.dart';
import 'package:test12/src/screens/signup.dart';
import 'src/screens/login.dart';
import 'src/app.dart';

class AppRouter{
  Route? genrateRoute(RouteSettings settings){
    switch(settings.name){
      case loginscreen:
        return MaterialPageRoute(builder: (_) => Login());

      case registerscreen:
        return MaterialPageRoute(builder: (_) => Signup());

      case showscreen:
        return MaterialPageRoute(builder: (_) => Home());

      case sportscreen:
        return MaterialPageRoute(builder: (_) => Home());

      case cinmascreen:
        return MaterialPageRoute(builder: (_) => Home());

      case partyscreen:
        return MaterialPageRoute(builder: (_) => Home());

      case otherscreen:
        return MaterialPageRoute(builder: (_) => Home());
    }
  }
}
