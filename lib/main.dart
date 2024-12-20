import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:fujitsuweb/Routes/routes_generator.dart';
import 'package:fujitsuweb/Ui/splash_screen.dart';
import 'package:sizer/sizer.dart';

import 'Ui/00_Auth/check_email.dart';
import 'Ui/00_Auth/forgot_password.dart';
import 'Ui/00_Auth/login_screen.dart';
import 'Ui/00_Auth/register_screen.dart';
import 'Ui/00_Auth/set_new_pass.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, screenType) {
        return MaterialApp(
          title: 'Fujitsu Web',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: SplashScreen(),
          // initialRoute: '/',
          // onGenerateRoute: RouterGenerator.generateRoute,
        );
      }
    );
  }
}

