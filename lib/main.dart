import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:fujitsuweb/Routes/routes_generator.dart';
import 'package:fujitsuweb/Ui_web/splash_screen.dart';
import 'package:sizer/sizer.dart';

import 'Ui_Web/00_Dashboard/Sub_Page/00_Projects/projects_screen.dart';
import 'Ui_Web/00_Dashboard/dashboard.dart';

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
          home: Dashboard(),
          // initialRoute: '/',
          // onGenerateRoute: RouterGenerator.generateRoute,
        );
      }
    );
  }
}

