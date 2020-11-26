import 'package:flutter/material.dart';
import 'package:pennee/onboarding.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Onboarding UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'muli'),
      home: OnboardingScreen(),
    );
  }
}