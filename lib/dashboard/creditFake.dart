import 'package:flutter/material.dart';
import 'package:pennee/dashboard/modals/withdrawModal.dart';
import 'package:pennee/utilities/styles.dart';

import 'modals/transferModal.dart';

class creditFake_page extends StatefulWidget {
  @override
  _main createState() => _main();
}

class _main extends State<creditFake_page> with SingleTickerProviderStateMixin {
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
            body: SingleChildScrollView(
                child: Column(children: [
          Image.asset("assets/images/fakeC1.png"),
          Image.asset("assets/images/fakeC2.png"),
          Image.asset("assets/images/fakeC3.png"),
          Image.asset("assets/images/fakeC4.png"),
          Image.asset("assets/images/fakeC5.png"),
          Image.asset("assets/images/fakeC6.png"),
        ]))));
  }
}
