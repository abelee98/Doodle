import 'package:doodle/widgets/feed.dart';
import 'package:flutter/material.dart';
import 'widgets/landing.dart';
import 'widgets/signup.dart';
import 'widgets/login.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/': 
        return MaterialPageRoute(builder: (_) => Landing());
      case '/signup':
        return MaterialPageRoute(builder: (_) => Signup());
      case '/login': 
        return MaterialPageRoute(builder: (_) => Login());
      case '/feed':
        return MaterialPageRoute(builder: (_) => Feed());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text("ERROR"),
        ),
      );
    });
  }
}

