import 'package:flutter/material.dart';

class FlashScreen extends StatelessWidget {
  const FlashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final brightness = Theme.of(context).brightness;

    return Scaffold(
      backgroundColor: brightness == Brightness.dark
          ? Colors.black
          : Colors.white,

      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          width: 450,
        ),
      ),
    );
  }
}