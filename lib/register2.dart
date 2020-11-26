import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:pennee/utilities/styles.dart';

class Register2Screen extends StatefulWidget {
  @override
  _Register2ScreenState createState() => _Register2ScreenState();
}

class _Register2ScreenState extends State<Register2Screen> {
  

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
               Padding(
                padding: EdgeInsets.fromLTRB(30, 81, 123, 10),
                child:Text(
                              'Complete sign up',
                              style: loginTitleSub,
                              textAlign: TextAlign.left,
                            )),

              Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child:Text(
                              'Secure your account to start using Pennee to build',
                              style: registerOtherTXT,
                              textAlign: TextAlign.left,
                            )),

            Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 40, 10),
                child:TextField(decoration: InputDecoration(
                  labelText: 'Enter your Email',
                  labelStyle: loginLabelStyle,
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff9672FB)))
                ),)),

                Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 40, 10),
                child:TextField(decoration: InputDecoration(
                  labelText: 'Create password',
                  labelStyle: loginLabelStyle,
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff9672FB)))
                ),
                )),

                Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 40, 10),
                child:TextField(decoration: InputDecoration(
                  labelText: 'Confirm password',
                  labelStyle: loginLabelStyle,
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff9672FB)))
                ),
                )),

                Padding(
                padding: EdgeInsets.fromLTRB(30, 10, 40, 10),
                child:TextField(decoration: InputDecoration(
                  labelText: 'Enter Referral code if any?',
                  labelStyle: loginLabelStyle,
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xff9672FB)))
                ),
                )),

                SizedBox(height: 70.0),
              
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
                                  'Sign Up',
                                  style: onboardingNextBtnTXT
                                ),
                              ],
                            ),
                          ),

                SizedBox(height: 45.0),

                          Text(
                              'Already have an account?',
                              style: registerTXTLower,
                              textAlign: TextAlign.center,
                            )
                              
            ],
          )),
      )
      ),
    );
  }
}