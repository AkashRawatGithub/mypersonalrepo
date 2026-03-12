import 'package:flutter/material.dart';
import 'package:mytestingapp/screens/splash_screen.dart';

import '../counterApp/counter_screen.dart';
import '../screens/home_screen.dart';
import 'app_routes.dart';

class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {

      case AppRoutes.flashScreen:
        return MaterialPageRoute(builder: (_) => FlashScreen());

      case AppRoutes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      case AppRoutes.CounterScreen:
        return MaterialPageRoute(builder: (_) => CounterScreen());


      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text("No Route Found"),
            ),
          ),
        );
    }
  }

}