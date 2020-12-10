import 'package:flutter/material.dart';
import 'package:pennee/utilities/styles.dart';

class anlytics_page extends StatefulWidget {
  @override
  _main createState() => _main();
}

class _main extends State<anlytics_page> with SingleTickerProviderStateMixin {
  AnimationController controller;

  double _get_precentage_screen_width(percentage) {
    var result = (percentage / 100) * MediaQuery.of(context).size.width;
    return result;
  }

  double _get_precentage_screen_height(percentage) {
    var result = (percentage / 100) * MediaQuery.of(context).size.height;
    return result;
  }

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
            body: Container(
          child: Column(
            children: [
              Container(
                  width: double.infinity,
                  height: _get_precentage_screen_height(22),
                  color: Color(0xff9672FB),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 60, 30, 20),
                    child: Row(
                      children: [
                        Container(
                          width: _get_precentage_screen_width(20),
                          child: Container(
                            alignment: AlignmentDirectional.topStart,
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              textDirection: TextDirection.ltr,
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                width: _get_precentage_screen_width(40),
                                child: Text(
                                  "Beryl Tops",
                                  style: analytics_uName,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              SizedBox(height: 35.0),
                              Container(
                                width: _get_precentage_screen_width(40),
                                child: Text(
                                  "Analytics",
                                  style: analytics_TopHeader,
                                  textAlign: TextAlign.center,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              SingleChildScrollView(
                  child: Column(
                children: [
                  // Row(
                  //   children: [
                  //     Padding(
                  //       padding: EdgeInsets.all(5),
                  //       child: FlatButton(
                  //         color: Color(0xff9672FB),
                  //         height: 42,
                  //         shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(7),
                  //             side: BorderSide(color: Color(0xff9672FB))),
                  //         onPressed: () {
                  //           // action
                  //         },
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           mainAxisSize: MainAxisSize.min,
                  //           children: <Widget>[
                  //             Text('Week', style: homeBeginnerBTN),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //     Padding(
                  //       padding: EdgeInsets.all(5),
                  //       child: FlatButton(
                  //         color: Color(0xff9672FB),
                  //         height: 42,
                  //         shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(7),
                  //             side: BorderSide(color: Color(0xff9672FB))),
                  //         onPressed: () {
                  //           // action
                  //         },
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           mainAxisSize: MainAxisSize.min,
                  //           children: <Widget>[
                  //             Text('Week', style: homeBeginnerBTN),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //     Padding(
                  //       padding: EdgeInsets.all(5),
                  //       child: FlatButton(
                  //         color: Color(0xff9672FB),
                  //         height: 42,
                  //         shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(7),
                  //             side: BorderSide(color: Color(0xff9672FB))),
                  //         onPressed: () {
                  //           // action
                  //         },
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           mainAxisSize: MainAxisSize.min,
                  //           children: <Widget>[
                  //             Text('Week', style: homeBeginnerBTN),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //     Padding(
                  //       padding: EdgeInsets.all(5),
                  //       child: FlatButton(
                  //         color: Color(0xff9672FB),
                  //         height: 42,
                  //         shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(7),
                  //             side: BorderSide(color: Color(0xff9672FB))),
                  //         onPressed: () {
                  //           // action
                  //         },
                  //         child: Row(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           mainAxisSize: MainAxisSize.min,
                  //           children: <Widget>[
                  //             Text('Week', style: homeBeginnerBTN),
                  //           ],
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),

                  Image.asset("assets/images/fakeA1.png"),
                  Image.asset("assets/images/fakeA2.png"),
                  Image.asset("assets/images/fakeA3.png"),
                  Image.asset("assets/images/fakeA4.png"),
                  Image.asset("assets/images/fakeA5.png")
                ],
              ))
            ],
          ),
        )));
  }
}
