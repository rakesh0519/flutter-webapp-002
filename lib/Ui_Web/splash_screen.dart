import 'package:flutter/material.dart';
import 'package:fujitsuweb/Ui_web/00_Auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/splash_bg.png"),
              fit: BoxFit.cover,
            ),
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Image.asset("assets/images/fujitsu_logo.png",width: 300),

          ],
        )
      ),
    );
  }
}
