import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pennee/login.dart';
import 'package:pennee/register2.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:pennee/utilities/styles.dart';

class Register1Screen extends StatefulWidget {
  @override
  _Register1ScreenState createState() => _Register1ScreenState();
}

class _Register1ScreenState extends State<Register1Screen> {
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          Register2Screen(),
      transitionDuration: Duration(milliseconds: 1000),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(1.0, 0.0);
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

  Route _createRoute2() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => LoginScreen(),
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
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: SingleChildScrollView(
            child: Container(
                decoration: BoxDecoration(color: Color(0xffF6F6F9)),
                child: Column(
                  children: [
                    Container(
                        width: double.infinity,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 81, 30, 10),
                            child: Text(
                              'Hello!',
                              style: loginTitleSub,
                              textAlign: TextAlign.left,
                            ))),
                    Container(
                        width: double.infinity,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                            child: Text(
                              'Tell us a little about you to get started!',
                              style: registerOtherTXT,
                              textAlign: TextAlign.left,
                            ))),
                    Container(
                        width: double.infinity,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Tell us your First name',
                                  labelStyle: loginLabelStyle,
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xff9672FB)))),
                            ))),
                    Container(
                        width: double.infinity,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Tell us your Middle name',
                                  labelStyle: loginLabelStyle,
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xff9672FB)))),
                            ))),
                    Container(
                        width: double.infinity,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Tell us your Last name',
                                  labelStyle: loginLabelStyle,
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xff9672FB)))),
                            ))),
                    Container(
                        width: double.infinity,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Enter your Phone number',
                                  labelStyle: loginLabelStyle,
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xff9672FB)))),
                            ))),
                    SizedBox(height: 70.0),
                    Container(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
                          child: FlatButton(
                            color: Color(0xff9672FB),
                            minWidth: 295,
                            height: 52,
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
                                Text('Continue', style: onboardingNextBtnTXT),
                              ],
                            ),
                          ),
                        )),
                    SizedBox(height: 45.0),
                    GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () =>
                            Navigator.of(context).push(_createRoute2()),
                        child: Text(
                          'Already have an account?',
                          style: registerTXTLower,
                          textAlign: TextAlign.center,
                        )),
                  ],
                )),
          )),
    );
  }
}
