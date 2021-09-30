import 'package:flutter/material.dart';
import 'package:horizontal_list/Screens/first_page.dart';
import 'package:horizontal_list/main.dart';

import 'Screens/second_page.dart';
import 'Screens/third_page.dart';

class RouteGenerator  {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      case "/firstPage":
        return MaterialPageRoute(builder: (_) => const FirstPage());
      case "/secondPage":
        return MaterialPageRoute(builder: (_) => const SecondPage());
      case "/thirdPage":
        return MaterialPageRoute(builder: (_) => const ThirdPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text(' ⚠ ERROR '),
        ),
      );
    });
  }
}

List routerList = [
  "/firstPage",
  "/secondPage",
  "/thirdPage",
  "/thirdPage",
  "/thirdPage",
  "/thirdPage"
];
