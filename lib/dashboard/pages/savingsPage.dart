import 'package:flutter/material.dart';
import 'package:pennee/utilities/styles.dart';

class savingsPage extends StatefulWidget {
  const savingsPage({Key key}) : super(key: key);
  @override
  _main createState() => _main();
}

class _main extends State<savingsPage> with SingleTickerProviderStateMixin {
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
                    padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                    child: Container(
                      width: double.infinity,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff9672FB),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            "assets/images/A133_1.png",
                            fit: BoxFit.cover,
                          ),
                          Padding(
                              padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                              child: Container(
                                  child: Row(
                                children: [
                                  SizedBox(
                                    child: Container(
                                        width: 75,
                                        height: 75,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: Colors.white),
                                        child: Padding(
                                          padding: EdgeInsets.all(0),
                                          child: Container(
                                            child: Image.asset(
                                                "assets/images/A133_2.png"),
                                          ),
                                        )),
                                  ),
                                  Flexible(
                                      child: Container(
                                          child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 15),
                                        Container(
                                          width: double.infinity,
                                          child: Text(
                                            "Total Savings",
                                            style: savingsPageTSWhite,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Container(
                                          width: double.infinity,
                                          child: Text(
                                            "N1,770,000.00",
                                            style: savingsPageAMWhite,
                                            textAlign: TextAlign.center,
                                          ),
                                        )
                                      ],
                                    ),
                                  ))),
                                ],
                              ))),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: double.infinity,
                      child: Container(
                          width: double.infinity,
                          height: 170,
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
                              padding: EdgeInsets.all(25),
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Supplies",
                                      style: savingsPage_supplies_WhiteBoxTXT,
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      "N30,000.00",
                                      style: savingsPage_Amount_WhiteBoxTXT,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(height: 25.0),
                                  Container(
                                    width: 300,
                                    height: 20,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      child: LinearProgressIndicator(
                                        value: 0.2,
                                        valueColor:
                                            new AlwaysStoppedAnimation<Color>(
                                                Colors.green),
                                        backgroundColor: Color(0x8AE8EAF6),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      "N500,150.75",
                                      style: savingsPage_Amount_WhiteBoxsmTXT,
                                      textAlign: TextAlign.right,
                                    ),
                                  )
                                ],
                              ))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: double.infinity,
                      child: Container(
                          width: double.infinity,
                          height: 170,
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
                              padding: EdgeInsets.all(25),
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Emergency bills",
                                      style: savingsPage_supplies_WhiteBoxTXT,
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      "N250,065.10",
                                      style: savingsPage_Amount_WhiteBoxTXT,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(height: 25.0),
                                  Container(
                                    width: 300,
                                    height: 20,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      child: LinearProgressIndicator(
                                        value: 0.4,
                                        valueColor:
                                            new AlwaysStoppedAnimation<Color>(
                                                Color(0xffEDC113)),
                                        backgroundColor: Color(0x8AE8EAF6),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      "N1,750,150.20",
                                      style: savingsPage_Amount_WhiteBoxsmTXT,
                                      textAlign: TextAlign.right,
                                    ),
                                  )
                                ],
                              ))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: double.infinity,
                      child: Container(
                          width: double.infinity,
                          height: 170,
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
                              padding: EdgeInsets.all(25),
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Investment",
                                      style: savingsPage_supplies_WhiteBoxTXT,
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      "N750,220.30",
                                      style: savingsPage_Amount_WhiteBoxTXT,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(height: 25.0),
                                  Container(
                                    width: 300,
                                    height: 20,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      child: LinearProgressIndicator(
                                        value: 0.0,
                                        valueColor:
                                            new AlwaysStoppedAnimation<Color>(
                                                Color(0xffEDC113)),
                                        backgroundColor: Color(0xffE8EAF6),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      "N1,750,150.20",
                                      style: savingsPage_Amount_WhiteBoxsmTXT,
                                      textAlign: TextAlign.right,
                                    ),
                                  )
                                ],
                              ))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: double.infinity,
                      child: Container(
                          width: double.infinity,
                          height: 170,
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
                              padding: EdgeInsets.all(25),
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      "Marketing",
                                      style: savingsPage_supplies_WhiteBoxTXT,
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      "N57,010.15",
                                      style: savingsPage_Amount_WhiteBoxTXT,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  SizedBox(height: 25.0),
                                  Container(
                                    width: 300,
                                    height: 20,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      child: LinearProgressIndicator(
                                        value: 0.35,
                                        valueColor:
                                            new AlwaysStoppedAnimation<Color>(
                                                Color(0xffFF0000)),
                                        backgroundColor: Color(0x8AE8EAF6),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      "N150,010.15",
                                      style: savingsPage_Amount_WhiteBoxsmTXT,
                                      textAlign: TextAlign.right,
                                    ),
                                  )
                                ],
                              ))),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xff9672FB),
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        ));
  }
}
