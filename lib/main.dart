import 'package:docpointer/pages/homepage.dart';
import 'package:docpointer/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Center(
          child: Text(
            'DocPointer',
            style: TextStyle(fontSize: 50),
          ),
        ),
        nextScreen: LoginScreen(),
        duration: 1800,
        //pageTransitionType: PageTransitionType.fade,
        splashTransition: SplashTransition.scaleTransition,
        splashIconSize: double.infinity,
        backgroundColor: Color(0xffc9e265),
        //pageTransitionType: PageTransitionType.scale,
      ),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
