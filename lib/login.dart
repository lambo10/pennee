import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:pennee/utilities/styles.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SingleChildScrollView(child:Container(
          decoration: BoxDecoration(
           color: Color(0xffF6F6F9)
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Image(
                    image: AssetImage(
                      'assets/images/A8.png',
                    ),
                  ),
                  
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 85, 162, 10),
                    child: Text(
                        'Welcome Back',
                        style: loginTitle,
                        textAlign: TextAlign.left,
                      ),
                  )

                ]
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 140, 10),
                child:Text(
                              'Please Log in',
                              style: loginTitleSub,
                              textAlign: TextAlign.left,
                            )),

            Padding(
                padding: EdgeInsets.fromLTRB(40, 30, 50, 10),
                child:TextField(decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: loginLabelStyle,
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff9672FB)))
                ),)),

                Padding(
                padding: EdgeInsets.fromLTRB(40, 10, 50, 10),
                child:TextField(decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: loginLabelStyle,
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff9672FB)))
                ),
                obscureText: true,
                )),

                SizedBox(height: 30.0),
              
                                       FlatButton(
                            color: Color(0xff9672FB),
                            minWidth: 295,
                            height: 62,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(31),
                            side: BorderSide(color: Color(0xff9672FB))
                          ),
                            onPressed: () {
                              // action
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Log in',
                                  style: onboardingNextBtnTXT
                                ),
                              ],
                            ),
                          ),

                SizedBox(height: 25.0),

                Padding(
                  padding: EdgeInsets.fromLTRB(60, 10, 89, 10),
                  child:
                            Row(
                              children: [
                                Container(
                              child:Text(
                                'Forgot password?',
                                style: loginTXTLower,
                                textAlign: TextAlign.left,
                              )
                              ),

                              Container(
                              child: Padding(padding: EdgeInsets.only(left:30), child:Text(
                                'Sign up',
                                style: loginTXTLower,
                                textAlign: TextAlign.right,
                              ))
                              ),
                              ]
                            ),
                  )
                          
            ],
          )),
      )
      ),
    );
  }
}