import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pennee/dashboard/creditFake.dart';
import 'package:pennee/dashboard/homePageRouter.dart';
import 'package:pennee/dashboard/pages/profilePage.dart';
import 'package:pennee/dashboard/sales.dart';
import 'analytics.dart';
import 'package:pennee/utilities/styles.dart';
import 'anlyticsFake.dart';
import 'home.dart';
import 'salesFake.dart';

class dashboardPage extends StatefulWidget {
  @override
  _dashboardPageState createState() => _dashboardPageState();
}

class _dashboardPageState extends State<dashboardPage> {
  int _currentIndex = 2;
  final List<Widget> _children = [
    creditFake_page(),
    salesFakeWget(),
    homePageRouter(),
    anlyticsFake_page(),
    home_page(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Future<bool> _onBackPressed() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Do you really want to exit the app?",
                  style: exsit_app_popTXT),
              actions: <Widget>[
                FlatButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: Text(
                      "No",
                      style: exsit_app_popOptionTXT,
                    )),
                FlatButton(
                    onPressed: () => SystemChannels.platform
                        .invokeMethod('SystemNavigator.pop'),
                    child: Text("Yes", style: exsit_app_popOptionTXT))
              ],
            ));
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        body: Container(
          child: _children[_currentIndex],
//        color: Colors.blueAccent,
        ),
        bottomNavigationBar: new Theme(
            data: Theme.of(context).copyWith(
                // sets the background color of the `BottomNavigationBar`
                canvasColor: Colors.white,
                // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                primaryColor: Color(0xff9672FB),
                textTheme: Theme.of(context).textTheme.copyWith(
                        caption: new TextStyle(
                      color: Color(0xffCFCFCF),
                    ))), // sets the inactive color of the `BottomNavigationBar`
            child: BottomNavigationBar(
              onTap: onTabTapped, // new
              currentIndex: _currentIndex, // new
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: new Icon(Icons.money),
                  title: new Text('Credit'),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.shopping_cart),
                  title: new Text('Sales'),
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.home),
                  title: new Text('Home'),
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.pie_chart), title: new Text('Analytics')),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.more),
                  title: new Text('More'),
                ),
              ],
            )),
      ),
    );
  }
}
