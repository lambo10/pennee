import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pennee/sucessPage.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:pennee/utilities/styles.dart';

class verifyPhoneNoScreen extends StatefulWidget {
  @override
  _verifyPhoneNoScreenState createState() => _verifyPhoneNoScreenState();
}

class _verifyPhoneNoScreenState extends State<verifyPhoneNoScreen> {
  FocusNode pin2;
  FocusNode pin3;
  FocusNode pin4;
  FocusNode pin5;

  @override
  void initState() {
    pin2 = FocusNode();
    pin3 = FocusNode();
    pin4 = FocusNode();
    pin5 = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    pin2.dispose();
    pin3.dispose();
    pin4.dispose();
    pin5.dispose();
    super.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  double _calcHeightpercentage(double percentage) {
    var screenHeight = MediaQuery.of(context).size.height;
    return ((percentage / screenHeight) * 100);
  }

  @override
  Widget build(BuildContext context) {
    Route _createRoute() {
      return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            sucessPageScreen(),
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

    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Color(0xffF6F6F9)),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 81, 30, 10),
                          child: Text(
                            'Verify number',
                            style: loginTitleSub,
                            textAlign: TextAlign.left,
                          )),
                    ),
                    Container(
                      width: double.infinity,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 10, 30, 35),
                          child: Text(
                            'A verification number will be sent to this number shortly. Input the digits below.',
                            style: registerOtherTXT,
                            textAlign: TextAlign.left,
                          )),
                    ),
                    Container(
                      width: double.infinity,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 50,
                                child: TextFormField(
                                  autofocus: true,
                                  obscureText: true,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(fontSize: 24),
                                  textAlign: TextAlign.center,
                                  onChanged: (value) {
                                    // also you need to store ur value at this point. so when the value is enterd completely you can auto check it
                                    nextField(value, pin2);
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 50,
                                child: TextFormField(
                                  focusNode: pin2,
                                  obscureText: true,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(fontSize: 24),
                                  textAlign: TextAlign.center,
                                  onChanged: (value) {
                                    nextField(value, pin3);
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 50,
                                child: TextFormField(
                                  focusNode: pin3,
                                  obscureText: true,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(fontSize: 24),
                                  textAlign: TextAlign.center,
                                  onChanged: (value) {
                                    nextField(value, pin4);
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 50,
                                child: TextFormField(
                                  focusNode: pin4,
                                  obscureText: true,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(fontSize: 24),
                                  textAlign: TextAlign.center,
                                  onChanged: (value) {
                                    nextField(value, pin5);
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 50,
                                child: TextFormField(
                                  focusNode: pin5,
                                  obscureText: true,
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(fontSize: 24),
                                  textAlign: TextAlign.center,
                                  onChanged: (value) {
                                    pin5.unfocus();
                                  },
                                ),
                              ),
                            ],
                          )),
                    ),
                    SizedBox(height: 78),
                    Container(
                      width: double.infinity,
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
                          child: Text(
                            "If you didn't receive the message click resend to get it.",
                            style: registerOtherTXT,
                            textAlign: TextAlign.left,
                          )),
                    ),
                    SizedBox(height: 70.0),
                    FlatButton(
                      color: Color(0xffF6F6F9),
                      height: 62,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7),
                          side: BorderSide(color: Color(0xff9672FB))),
                      onPressed: () {
                        // action
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text('Resend', style: verifyNumberResend),
                        ],
                      ),
                    ),
                    SizedBox(height: _calcHeightpercentage(400.0)),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: FlatButton(
                          color: Color(0xff9672FB),
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
                              Text('Create account',
                                  style: onboardingNextBtnTXT),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
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
