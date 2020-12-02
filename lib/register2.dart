import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:pennee/utilities/styles.dart';
import 'package:pennee/verifyPhoneNo.dart';

class Register2Screen extends StatefulWidget {
  @override
  _Register2ScreenState createState() => _Register2ScreenState();
}

class _Register2ScreenState extends State<Register2Screen> {
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          verifyPhoneNoScreen(),
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
                              'Complete sign up',
                              style: loginTitleSub,
                              textAlign: TextAlign.left,
                            ))),
                    Container(
                        width: double.infinity,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                            child: Text(
                              'Secure your account to start using Pennee to build',
                              style: registerOtherTXT,
                              textAlign: TextAlign.left,
                            ))),
                    Container(
                        width: double.infinity,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Enter your Email',
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
                                  labelText: 'Create password',
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
                                  labelText: 'Confirm password',
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
                                  labelText: 'Enter Referral code if any?',
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
                            height: 62,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(31),
                                side: BorderSide(color: Color(0xff9672FB))),
                            onPressed: () {
                              Navigator.of(context).push(_createRoute());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text('Sign Up', style: onboardingNextBtnTXT),
                              ],
                            ),
                          ),
                        )),
                    SizedBox(height: 45.0),
                    Text(
                      'Already have an account?',
                      style: registerTXTLower,
                      textAlign: TextAlign.center,
                    )
                  ],
                )),
          )),
    );
  }
}
