import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prac_five/screen/splash_screen.dart';
import 'package:prac_five/utiliz/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: SplashScreen(),
    );
  }
}
