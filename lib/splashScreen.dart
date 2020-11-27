import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pennee/onboarding.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:pennee/utilities/styles.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
var _merchantBTN_v = 0.8;
var _merchantBTN_x = -2.5;
var _vendorBTN_v = 0.8;
var _vendorBTN_x = 2.5;

var _logo_v = -0.6;
var _logo_x = 0.0;
var _logoTXT_v = -0.5;
var _logoTXT_x = 0.0;

var _allItems_opacity = 0.0;

var _backround1_opacity = 0.0;
var _backround2_opacity = 1.0;


_startAnim(){
  setState(() {
    _merchantBTN_v = 0.8;
    _merchantBTN_x = -0.6;
    _vendorBTN_v = 0.8;
    _vendorBTN_x = 0.6;

    _logo_v = -0.1;
    _logo_x = 0.0;
    _logoTXT_v = 0.0;
    _logoTXT_x = 0.0;

    _allItems_opacity = 1;

    _backround1_opacity = 1.0;
    _backround2_opacity = 0.0;
  });
}

@override
  void initState() {
   Timer _timer = new Timer(const Duration(milliseconds: 4000), () {
    _startAnim();
    });
  }

  Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => OnboardingScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0,1.0);
      var end = Offset.zero;
      var curve = Curves.fastLinearToSlowEaseIn;

      var tween = Tween().chain(CurveTween(curve: curve));

      return FadeTransition(
              opacity: animation,
              child: child,
              );
    },
  );
}  



  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color(0xff9672FB),
      child:Stack(
      fit: StackFit.expand,
      children: [
      AnimatedOpacity(
        opacity: _backround1_opacity, 
        duration: Duration(milliseconds:700),
        child: Container(
          child: Image.asset("assets/images/splashBack.png",
        fit: BoxFit.cover,
        ),
        ),
        ),
        AnimatedOpacity(
        opacity: _backround2_opacity, 
        duration: Duration(milliseconds:700),
        child: Container(
          child: Image.asset("assets/images/A1.png",
        fit: BoxFit.cover,
        ),
        ),
        ),
        AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          alignment: Alignment(_logo_x, _logo_v),
          child: Image.asset("assets/images/logo.png")
        ),
         AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          alignment: Alignment(_logoTXT_x, _logoTXT_v),
          child: Image.asset("assets/images/penneeLogoWriteup.png",width: 100,height: 50,)
        ),
         AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          alignment: Alignment(_merchantBTN_x, _merchantBTN_v),
          child: AnimatedOpacity(
          opacity: _allItems_opacity, 
          duration: Duration(seconds: 1),
          child: FlatButton(
                            color: Colors.white,
                            minWidth: 130,
                            height: 62,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(31),
                            side: BorderSide(color: Colors.white)
                          ),
                            onPressed: () {
                              Navigator.of(context).push(_createRoute());
                              _startAnim();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Merchant',
                                  style: onboardingNextBtnTXTThemeColor
                                ),
                              ],
                            ),
                          ),
          )
        ),
     AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          alignment: Alignment(_vendorBTN_x, _vendorBTN_v),
          child: AnimatedOpacity(
            opacity: _allItems_opacity,
          duration: Duration(seconds: 1),
          child: FlatButton(
                            color: Color(0xff9672FB),
                            minWidth: 130,
                            height: 62,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(31),
                            side: BorderSide(color: Colors.white)
                          ),
                            onPressed: () {
                              
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Vendor',
                                  style: onboardingNextBtnTXT
                                ),
                              ],
                            ),
                          ),
          ) ),
    
      ],
    )
    );
      }
}