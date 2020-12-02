import 'package:flutter/material.dart';
import 'package:pennee/dashboard/sales.dart';
import 'home.dart';
// import 'profileWidget.dart';
// import 'save.dart';
// import 'searchWidget.dart';
// import 'whishlistWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'liliteach',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Color.fromRGBO(238, 238, 238, 1),
      ),
      home: SampleAppPage(),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueAccent,
        child: SampleAppPage(),
      ),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  SampleAppPage({Key key}) : super(key: key);
  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  int _currentIndex = 2;
  final List<Widget> _children = [
    homeWget(),
    homeWget(),
    homeWget(),
    salesWget(),
    homeWget(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
