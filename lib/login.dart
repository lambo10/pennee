import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:pennee/utilities/styles.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double _calcHeightpercentage(double percentage) {
    var screenHeight = MediaQuery.of(context).size.height;
    return ((percentage / screenHeight) * 100);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: SingleChildScrollView(
            child: Container(
                height: 900,
                decoration: BoxDecoration(color: Color(0xffF6F6F9)),
                child: Column(
                  children: [
                    Stack(children: [
                      Image(
                        // width: double.infinity,
                        // height: _calcHeightpercentage(900),
                        image: AssetImage(
                          'assets/images/A8.png',
                        ),
                      ),
                      Container(
                          width: double.infinity,
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(30, 85, 30, 10),
                              child: Column(
                                children: [
                                  Container(
                                      width: double.infinity,
                                      child: Text(
                                        'Welcome',
                                        style: loginTitle,
                                        textAlign: TextAlign.left,
                                      )),
                                  Container(
                                      width: double.infinity,
                                      child: Text(
                                        'Back',
                                        style: loginTitle,
                                        textAlign: TextAlign.left,
                                      )),
                                ],
                              )))
                    ]),
                    Container(
                        width: double.infinity,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                            child: Text(
                              'Please Log in',
                              style: loginTitleSub,
                              textAlign: TextAlign.left,
                            ))),
                    Container(
                        width: double.infinity,
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Email',
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
                                  labelText: 'Password',
                                  labelStyle: loginLabelStyle,
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xff9672FB)))),
                              obscureText: true,
                            ))),
                    SizedBox(height: 30.0),
                    FlatButton(
                      color: Color(0xff9672FB),
                      minWidth: 295,
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
                          Text('Log in', style: onboardingNextBtnTXT),
                        ],
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Container(
                        width: double.infinity,
                        child: Center(
                            child: Padding(
                          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                          child: Row(children: [
                            Container(
                                child: Text(
                              'Forgot password?',
                              style: loginTXTLower,
                              textAlign: TextAlign.left,
                            )),
                            Container(
                                child: Padding(
                                    padding: EdgeInsets.only(left: 30),
                                    child: Text(
                                      'Sign up',
                                      style: loginTXTLower,
                                      textAlign: TextAlign.right,
                                    ))),
                          ]),
                        )))
                  ],
                )),
          )),
    );
  }
}
