import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:pennee/utilities/styles.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xff9672FB),
      child:Stack(
      fit: StackFit.expand,
      children: [
        AnimatedContainer(
          child: Image.asset("assets/images/A1.png",
        fit: BoxFit.cover,
        ),
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        ),
        Container(
          alignment: Alignment(0.0, -0.6),
          child: Image.asset("assets/images/logo.png")
        ),
        Container(
          alignment: Alignment(0.0, -0.5),
          child: Image.asset("assets/images/penneeLogoWriteup.png",width: 100,height: 50,)
        ),
      ],
    )
    );
      }
}