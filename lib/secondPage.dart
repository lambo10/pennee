import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pennee/onboarding.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:pennee/utilities/styles.dart';

class secondScreen extends StatefulWidget {
  @override
  _secondScreenState createState() => _secondScreenState();
}

class _secondScreenState extends State<secondScreen> {
var _merchantBTN_v = 0.8;
var _merchantBTN_x = -0.6;
var _allItems_opacity = 0.2;


_startAnim(){
  setState(() {
    _merchantBTN_v = -0.1;
    _merchantBTN_x = 0.8;
    _allItems_opacity = 1;
  });
}

@override
  void initState() {
    _startAnim();
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
        AnimatedContainer(
          child: Image.asset("assets/images/secondPage.png",
        fit: BoxFit.cover,
        ),
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        ),
        Container(
          alignment: Alignment(0.0, -0.1),
          child: Image.asset("assets/images/logo.png")
        ),
        Container(
          alignment: Alignment(0.0, 0.0),
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
                              // Navigator.of(context).push(_createRoute());
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
     Container(
          alignment: Alignment(0.6, 0.8),
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
        ),
      
      ],
    )
    );
      }
}