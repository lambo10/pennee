import 'package:flutter/material.dart';
import 'package:pennee/utilities/styles.dart';

class withdrawModal extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => withdrawModalState();
}

class withdrawModalState extends State<withdrawModal>
    with SingleTickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    controller.forward();

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  double _get_precentage_screen_width(percentage) {
    var result = (percentage / 100) * MediaQuery.of(context).size.width;
    return result;
  }

  double _get_precentage_screen_height(percentage) {
    var result = (percentage / 100) * MediaQuery.of(context).size.height;
    return result;
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
        child: Center(
          child: Material(
            color: Colors.transparent,
            child: Container(
              height: _get_precentage_screen_height(47),
              width: _get_precentage_screen_width(75),
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0))),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        child: Text(
                          "Withdrawal",
                          style: modalTXT_Title,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Enter Amount',
                            labelStyle: modalTXT,
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff9672FB)))),
                      ),
                      SizedBox(height: 45.0),
                      Container(
                        width: double.infinity,
                        child: Text(
                          "Withdrawal fee: N0.00",
                          style: modalTXT_Title_sub,
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 60.0),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30, 0, 20, 10),
                        child: FlatButton(
                          color: Color(0xff9672FB),
                          minWidth: 295,
                          height: 54,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7),
                              side: BorderSide(color: Color(0xff9672FB))),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text('Withdraw', style: onboardingNextBtnTXT),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
