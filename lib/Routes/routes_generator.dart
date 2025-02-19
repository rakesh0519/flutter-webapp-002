import 'package:flutter/material.dart';
import 'package:fujitsuweb/Ui_Web/splash_screen.dart';

import '../Ui_Web/00_Dashboard/dashboard.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      return MaterialPageRoute(builder: (_) => const SplashScreen());

      case '/Dashboard':
      return MaterialPageRoute(builder: (_) => const Dashboard());

      default:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
    }
  }
}