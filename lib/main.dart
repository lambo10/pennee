import 'package:flutter/material.dart';
import 'package:pennee/onboarding.dart';
import 'package:pennee/secondPage.dart';
import 'package:pennee/splashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'penee',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'muli'),
      home: SplashScreen(),
    );
  }
}