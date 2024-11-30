import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/prestion/screens/home/home.dart';
import 'package:news/prestion/screens/splash/splash.dart';

class RoutesManager {
  static const String splash = '/splash';
  static const String home = '/home';

  static Route? router(RouteSettings settings) {
    switch (settings.name) {
      case splash:return MaterialPageRoute(builder: (context) => const Splash(),);
      case home:return MaterialPageRoute(builder: (context) => Home(),);
    }
  }
}