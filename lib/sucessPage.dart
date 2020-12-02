import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pennee/dashboard/dashboard.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:pennee/utilities/styles.dart';

class sucessPageScreen extends StatefulWidget {
  @override
  _sucessPageScreenState createState() => _sucessPageScreenState();
}

class _sucessPageScreenState extends State<sucessPageScreen> {
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => MyApp(),
      transitionDuration: Duration(milliseconds: 1000),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.fastLinearToSlowEaseIn;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F9),
      body: Container(
        width: double.infinity,
        color: Color(0xffF6F6F9),
        child: Stack(
          children: [
            Container(
              child: Image.asset(
                "assets/images/A13.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment(0.0, 0.9),
              child: FlatButton(
                color: Color(0xffF6F6F9),
                minWidth: 295,
                height: 62,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                    side: BorderSide(color: Color(0xff9672FB))),
                onPressed: () {
                  Navigator.of(context).push(_createRoute());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Continue', style: onboardingNextBtnTXTThemeColor),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
