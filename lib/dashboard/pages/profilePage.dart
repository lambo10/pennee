import 'package:flutter/material.dart';
import 'package:pennee/utilities/styles.dart';

class profile_page extends StatefulWidget {
  const profile_page({Key key}) : super(key: key);
  @override
  _main createState() => _main();
}

class _main extends State<profile_page> with SingleTickerProviderStateMixin {
  AnimationController controller;

  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    var begin = Offset(0.0, 1);
    var end = Offset(0.0, 0.0);
    var curve = Curves.fastLinearToSlowEaseIn;
    var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    var offsetAnimation = controller.drive(tween);

    return SlideTransition(
        position: offsetAnimation,
        child: Scaffold(
            backgroundColor: Color(0xff9672FB),
            body: Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.topLeft,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            child: Icon(Icons.arrow_back_ios,
                                size: 30, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: double.infinity,
                        child: Container(
                            width: 94,
                            height: 94,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xff989EFC),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(15),
                              child: Image.asset("assets/images/A45_1.png"),
                            )),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
                      child: Container(
                          width: double.infinity,
                          child: Text(
                            'Adeyemi Gideon Babatunde',
                            style: profile_pageName,
                            textAlign: TextAlign.left,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: Container(
                          width: double.infinity,
                          child: Text(
                            'adeyemigideon87@gmail.com',
                            style: profile_pageEmail,
                            textAlign: TextAlign.left,
                          )),
                    ),
                    SizedBox(height: 40.0),
                    Container(
                        width: double.infinity,
                        height: 1.0,
                        color: Color(0xffCFCFCF)),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: Container(
                          width: double.infinity,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Phone no: ",
                                    style: profile_pageSideBoldTXT),
                                TextSpan(
                                    text: "09099911847",
                                    style: profile_pageSideLightTXT),
                              ],
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 19, 30, 0),
                      child: Container(
                          width: double.infinity,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Date of Birth: ",
                                    style: profile_pageSideBoldTXT),
                                TextSpan(
                                    text: "01-01-1960",
                                    style: profile_pageSideLightTXT),
                              ],
                            ),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: double.infinity,
                        child: Icon(
                          Icons.location_on,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(30, 25, 30, 0),
                        child: Container(
                          width: double.infinity,
                          child: Text(
                            "No 16, Alh Ige street, tenten bus stop, Akeja, Oju ore. Ota. Lagos State.",
                            style: profile_pageSideLightTXT,
                            textAlign: TextAlign.left,
                          ),
                        )),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 19, 30, 0),
                      child: Container(
                          width: double.infinity,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Closest Bus Stop: ",
                                    style: profile_pageSideBoldTXT),
                                TextSpan(
                                    text: "Akeja",
                                    style: profile_pageSideLightTXT),
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            )));
  }
}
