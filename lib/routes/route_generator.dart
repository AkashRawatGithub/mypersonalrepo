import 'package:flutter/material.dart';
import 'package:mytestingapp/RandomGC/random_gc.dart';
import 'package:mytestingapp/cameraCapture/camera_Screen.dart';
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

      case AppRoutes.counterScreen:
        return MaterialPageRoute(builder: (_) => CounterScreen());

      case AppRoutes.randomGC:
        return MaterialPageRoute(builder: (_) => RandomGc());

      case AppRoutes.cameraScreen:
        return MaterialPageRoute(builder: (_) => CameraScreen());

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