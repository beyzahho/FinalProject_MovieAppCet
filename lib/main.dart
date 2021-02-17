import 'package:flutter/material.dart';
import 'package:movie_info_app/screens/home/home_screens.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(

        splash: Image.asset(
            "assets/popcorn.gif"
        ),

        nextScreen: HomeScreen() ,
        splashIconSize: 400,
        splashTransition: SplashTransition.sizeTransition,
      ),
      title: 'Movie App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
    );
  }
}