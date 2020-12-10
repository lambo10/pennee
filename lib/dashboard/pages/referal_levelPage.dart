import 'package:flutter/material.dart';
import 'package:pennee/utilities/styles.dart';

class referal_levelPage extends StatefulWidget {
  const referal_levelPage({Key key}) : super(key: key);
  @override
  _main createState() => _main();
}

class _main extends State<referal_levelPage>
    with SingleTickerProviderStateMixin {
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

    double _get_precentage_screen_width(percentage) {
      var result = (percentage / 100) * MediaQuery.of(context).size.width;
      return result;
    }

    double _get_precentage_screen_height(percentage) {
      var result = (percentage / 100) * MediaQuery.of(context).size.height;
      return result;
    }

    return SlideTransition(
        position: offsetAnimation,
        child: Scaffold(
            backgroundColor: Color(0xffF6F6F9),
            body: Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
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
                                size: 30, color: Color(0xff9672FB)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: double.infinity,
                        child: Container(
                            width: double.infinity,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff9672FB),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff0000000D),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(0, 10),
                                  ),
                                ]),
                            child: Padding(
                                padding: EdgeInsets.all(25),
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        "Beginner",
                                        style: referal_levelPageConHeader,
                                      ),
                                    ),
                                    SizedBox(height: 25.0),
                                    Container(
                                      width: 300,
                                      height: 20,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        child: LinearProgressIndicator(
                                          value: 0.3,
                                          valueColor:
                                              new AlwaysStoppedAnimation<Color>(
                                                  Colors.white),
                                          backgroundColor: Color(0x42F6F6F9),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        "Level 1",
                                        style: referal_levelPageConLevTXT,
                                        textAlign: TextAlign.right,
                                      ),
                                    )
                                  ],
                                ))),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
                        child: Container(
                            alignment: Alignment.topCenter,
                            width: double.infinity,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff0000000D),
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    ),
                                  ]),
                              child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Container(
                                      child: Row(
                                    children: [
                                      SizedBox(
                                        child: Container(
                                            width: 55,
                                            height: 55,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0xff9672FB)),
                                            child: Padding(
                                              padding: EdgeInsets.all(13),
                                              child: Container(
                                                width: double.infinity,
                                                child: Text(
                                                  "1",
                                                  style:
                                                      referal_level_insideBluBoxNo,
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            )),
                                      ),
                                      Flexible(
                                          child: Container(
                                              child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "To use account",
                                                style:
                                                    referal_levelPageWContHeader,
                                              ),
                                            ),
                                            SizedBox(height: 8.0),
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "Complete profile",
                                                style:
                                                    referal_levelPageWContNormTXT,
                                                textAlign: TextAlign.left,
                                              ),
                                            )
                                          ],
                                        ),
                                      ))),
                                    ],
                                  ))),
                            ))),
                    Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: Container(
                            alignment: Alignment.topCenter,
                            width: double.infinity,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff0000000D),
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    ),
                                  ]),
                              child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Container(
                                      child: Row(
                                    children: [
                                      SizedBox(
                                        child: Container(
                                            width: 55,
                                            height: 55,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0xff9672FB)),
                                            child: Padding(
                                              padding: EdgeInsets.all(13),
                                              child: Container(
                                                width: double.infinity,
                                                child: Text(
                                                  "2",
                                                  style:
                                                      referal_level_insideBluBoxNo,
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            )),
                                      ),
                                      Flexible(
                                          child: Container(
                                              child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "To access analytics",
                                                style:
                                                    referal_levelPageWContHeader,
                                              ),
                                            ),
                                            SizedBox(height: 8.0),
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "Set up Products, Supply, equipments, budget and projections.",
                                                style:
                                                    referal_levelPageWContNormTXT,
                                                textAlign: TextAlign.left,
                                              ),
                                            )
                                          ],
                                        ),
                                      ))),
                                    ],
                                  ))),
                            ))),
                    Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: Container(
                            alignment: Alignment.topCenter,
                            width: double.infinity,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff9672FB),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff0000000D),
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    ),
                                  ]),
                              child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Container(
                                      child: Row(
                                    children: [
                                      SizedBox(
                                        child: Container(
                                            width: 55,
                                            height: 55,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0x42FFFFFF)),
                                            child: Padding(
                                              padding: EdgeInsets.all(13),
                                              child: Container(
                                                width: double.infinity,
                                                child: Text(
                                                  "3",
                                                  style:
                                                      referal_level_insideBluBoxNo,
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            )),
                                      ),
                                      Flexible(
                                          child: Container(
                                              child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "To receive zero transactions fees for next 100 transactions",
                                                style:
                                                    referal_levelPageWContHeaderWhite,
                                              ),
                                            ),
                                            SizedBox(height: 8.0),
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "Refer 3 friends",
                                                style:
                                                    referal_levelPageWContNormTXTWhite,
                                                textAlign: TextAlign.left,
                                              ),
                                            )
                                          ],
                                        ),
                                      ))),
                                    ],
                                  ))),
                            ))),
                    Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: Container(
                            alignment: Alignment.topCenter,
                            width: double.infinity,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff0000000D),
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    ),
                                  ]),
                              child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Container(
                                      child: Row(
                                    children: [
                                      SizedBox(
                                        child: Container(
                                            width: 55,
                                            height: 55,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0xff9672FB)),
                                            child: Padding(
                                              padding: EdgeInsets.all(13),
                                              child: Container(
                                                width: double.infinity,
                                                child: Text(
                                                  "4",
                                                  style:
                                                      referal_level_insideBluBoxNo,
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            )),
                                      ),
                                      Flexible(
                                          child: Container(
                                              child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "To access Pennee asset loans",
                                                style:
                                                    referal_levelPageWContHeader,
                                              ),
                                            ),
                                            SizedBox(height: 8.0),
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "Use Pennee box, wallets and cards for one month.",
                                                style:
                                                    referal_levelPageWContNormTXT,
                                                textAlign: TextAlign.left,
                                              ),
                                            )
                                          ],
                                        ),
                                      ))),
                                    ],
                                  ))),
                            ))),
                    Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: Container(
                            alignment: Alignment.topCenter,
                            width: double.infinity,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff0000000D),
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    ),
                                  ]),
                              child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Container(
                                      child: Row(
                                    children: [
                                      SizedBox(
                                        child: Container(
                                            width: 55,
                                            height: 55,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0xff9672FB)),
                                            child: Padding(
                                              padding: EdgeInsets.all(13),
                                              child: Container(
                                                width: double.infinity,
                                                child: Text(
                                                  "5",
                                                  style:
                                                      referal_level_insideBluBoxNo,
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            )),
                                      ),
                                      Flexible(
                                          child: Container(
                                              child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "To boost credit score by 5 points",
                                                style:
                                                    referal_levelPageWContHeader,
                                              ),
                                            ),
                                            SizedBox(height: 8.0),
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "Create savings plan",
                                                style:
                                                    referal_levelPageWContNormTXT,
                                                textAlign: TextAlign.left,
                                              ),
                                            )
                                          ],
                                        ),
                                      ))),
                                    ],
                                  ))),
                            ))),
                    Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: Container(
                            alignment: Alignment.topCenter,
                            width: double.infinity,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff0000000D),
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    ),
                                  ]),
                              child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Container(
                                      child: Row(
                                    children: [
                                      SizedBox(
                                        child: Container(
                                            width: 55,
                                            height: 55,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0xff9672FB)),
                                            child: Padding(
                                              padding: EdgeInsets.all(13),
                                              child: Container(
                                                width: double.infinity,
                                                child: Text(
                                                  "6",
                                                  style:
                                                      referal_level_insideBluBoxNo,
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            )),
                                      ),
                                      Flexible(
                                          child: Container(
                                              child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "Zero transaction fees for next 50 transactions",
                                                style:
                                                    referal_levelPageWContHeader,
                                              ),
                                            ),
                                            SizedBox(height: 8.0),
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "Transact up to 1.5 million",
                                                style:
                                                    referal_levelPageWContNormTXT,
                                                textAlign: TextAlign.left,
                                              ),
                                            )
                                          ],
                                        ),
                                      ))),
                                    ],
                                  ))),
                            ))),
                    Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: Container(
                            alignment: Alignment.topCenter,
                            width: double.infinity,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff0000000D),
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    ),
                                  ]),
                              child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Container(
                                      child: Row(
                                    children: [
                                      SizedBox(
                                        child: Container(
                                            width: 55,
                                            height: 55,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0xff9672FB)),
                                            child: Padding(
                                              padding: EdgeInsets.all(13),
                                              child: Container(
                                                width: double.infinity,
                                                child: Text(
                                                  "7",
                                                  style:
                                                      referal_level_insideBluBoxNo,
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            )),
                                      ),
                                      Flexible(
                                          child: Container(
                                              child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "To access Pennee overdrafts",
                                                style:
                                                    referal_levelPageWContHeader,
                                              ),
                                            ),
                                            SizedBox(height: 8.0),
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "Pay bills and expenses up to 500,000 naira",
                                                style:
                                                    referal_levelPageWContNormTXT,
                                                textAlign: TextAlign.left,
                                              ),
                                            )
                                          ],
                                        ),
                                      ))),
                                    ],
                                  ))),
                            ))),
                    Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: Container(
                            alignment: Alignment.topCenter,
                            width: double.infinity,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff0000000D),
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    ),
                                  ]),
                              child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Container(
                                      child: Row(
                                    children: [
                                      SizedBox(
                                        child: Container(
                                            width: 55,
                                            height: 55,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0xff9672FB)),
                                            child: Padding(
                                              padding: EdgeInsets.all(13),
                                              child: Container(
                                                width: double.infinity,
                                                child: Text(
                                                  "8",
                                                  style:
                                                      referal_level_insideBluBoxNo,
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            )),
                                      ),
                                      Flexible(
                                          child: Container(
                                              child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "Zero transaction fees for next 500 transactions",
                                                style:
                                                    referal_levelPageWContHeader,
                                              ),
                                            ),
                                            SizedBox(height: 8.0),
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "Refer 10 friends",
                                                style:
                                                    referal_levelPageWContNormTXT,
                                                textAlign: TextAlign.left,
                                              ),
                                            )
                                          ],
                                        ),
                                      ))),
                                    ],
                                  ))),
                            ))),
                    Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: Container(
                            alignment: Alignment.topCenter,
                            width: double.infinity,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff0000000D),
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    ),
                                  ]),
                              child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Container(
                                      child: Row(
                                    children: [
                                      SizedBox(
                                        child: Container(
                                            width: 55,
                                            height: 55,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0xff9672FB)),
                                            child: Padding(
                                              padding: EdgeInsets.all(13),
                                              child: Container(
                                                width: double.infinity,
                                                child: Text(
                                                  "9",
                                                  style:
                                                      referal_level_insideBluBoxNo,
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            )),
                                      ),
                                      Flexible(
                                          child: Container(
                                              child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "10,000 naira cash gift",
                                                style:
                                                    referal_levelPageWContHeader,
                                              ),
                                            ),
                                            SizedBox(height: 8.0),
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "Transact up to 5 million naira",
                                                style:
                                                    referal_levelPageWContNormTXT,
                                                textAlign: TextAlign.left,
                                              ),
                                            )
                                          ],
                                        ),
                                      ))),
                                    ],
                                  ))),
                            ))),
                    Padding(
                        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                        child: Container(
                            alignment: Alignment.topCenter,
                            width: double.infinity,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xff0000000D),
                                      spreadRadius: 2,
                                      blurRadius: 10,
                                      offset: Offset(0, 10),
                                    ),
                                  ]),
                              child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Container(
                                      child: Row(
                                    children: [
                                      SizedBox(
                                        child: Container(
                                            width: 55,
                                            height: 55,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Color(0xff9672FB)),
                                            child: Padding(
                                              padding: EdgeInsets.all(13),
                                              child: Container(
                                                width: double.infinity,
                                                child: Text(
                                                  "10",
                                                  style:
                                                      referal_level_insideBluBoxNo,
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            )),
                                      ),
                                      Flexible(
                                          child: Container(
                                              child: Padding(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "Receive merchandise & vouchers",
                                                style:
                                                    referal_levelPageWContHeader,
                                              ),
                                            ),
                                            SizedBox(height: 8.0),
                                            Container(
                                              width: double.infinity,
                                              child: Text(
                                                "Use account actively for a year.",
                                                style:
                                                    referal_levelPageWContNormTXT,
                                                textAlign: TextAlign.left,
                                              ),
                                            )
                                          ],
                                        ),
                                      ))),
                                    ],
                                  ))),
                            ))),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            )));
  }
}
