import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:fujitsuweb/Routes/routes_generator.dart';
import 'package:sizer/sizer.dart';

import 'Ui/00_Auth/check_email.dart';
import 'Ui/00_Auth/register_screen.dart';

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
          home: CheckEmail(),
          // initialRoute: '/',
          // onGenerateRoute: RouterGenerator.generateRoute,
        );
      }
    );
  }
}

