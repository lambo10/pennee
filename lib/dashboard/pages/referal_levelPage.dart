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
                            height: _get_precentage_screen_height(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff9672FB),
                            ),
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
                            height: _get_precentage_screen_height(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Padding(
                                padding: EdgeInsets.all(25),
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        "To use account",
                                        style: referal_levelPageWContHeader,
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        "Complete profile",
                                        style: referal_levelPageWContNormTXT,
                                        textAlign: TextAlign.left,
                                      ),
                                    )
                                  ],
                                ))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: double.infinity,
                        child: Container(
                            width: double.infinity,
                            height: _get_precentage_screen_height(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Padding(
                                padding: EdgeInsets.all(25),
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        "To use account",
                                        style: referal_levelPageWContHeader,
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        "Complete profile",
                                        style: referal_levelPageWContNormTXT,
                                        textAlign: TextAlign.left,
                                      ),
                                    )
                                  ],
                                ))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: double.infinity,
                        child: Container(
                            width: double.infinity,
                            height: _get_precentage_screen_height(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Padding(
                                padding: EdgeInsets.all(25),
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        "To use account",
                                        style: referal_levelPageWContHeader,
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        "Complete profile",
                                        style: referal_levelPageWContNormTXT,
                                        textAlign: TextAlign.left,
                                      ),
                                    )
                                  ],
                                ))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: Container(
                        alignment: Alignment.topCenter,
                        width: double.infinity,
                        child: Container(
                            width: double.infinity,
                            height: _get_precentage_screen_height(15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Padding(
                                padding: EdgeInsets.all(25),
                                child: Column(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        "To use account",
                                        style: referal_levelPageWContHeader,
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        "Complete profile",
                                        style: referal_levelPageWContNormTXT,
                                        textAlign: TextAlign.left,
                                      ),
                                    )
                                  ],
                                ))),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
