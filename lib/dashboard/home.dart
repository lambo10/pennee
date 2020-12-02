import 'package:flutter/material.dart';
import 'package:pennee/utilities/styles.dart';

class Todo {
  final String title;
  final String id;

  Todo(this.title, this.id);
}

class homeWget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: home_page(),
    );
  }
}

class home_page extends StatefulWidget {
  home_page({Key key}) : super(key: key);
  @override
  _main createState() => _main();
}

class _main extends State<home_page> {
  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 4.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: _setindicatorColor(isActive),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  _setindicatorColor(isActive) {
    if (isActive) {
      Colors.white;
    } else {
      Color(0xff9672FB);
    }
  }

  Widget _loadingView() {
    return new Center(
      child:
          SizedBox(child: CircularProgressIndicator(), width: 30, height: 30),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xff9672FB),
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text("Beryl Tops", style: homeUserName),
                )
              ],
            ),
            FlatButton(
              color: Color(0xff9672FB),
              height: 42,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                  side: BorderSide(color: Color(0xff9672FB))),
              onPressed: () {
                // action
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Resend', style: homeBeginnerBTN),
                ],
              ),
            ),
          ]),
          SizedBox(height: 32.0),
          Column(
            children: [
              Container(
                  width: double.infinity,
                  child: Text(
                    'Hello',
                    style: HelloTitle,
                    textAlign: TextAlign.left,
                  )),
              Container(
                  width: double.infinity,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Gideon!", style: HelloTitle),
                        WidgetSpan(
                          child: Icon(
                            Icons.verified_user,
                            size: 25,
                            color: Colors.amber[600],
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          SizedBox(height: 32.0),
          Container(
            width: double.infinity,
            height: 173,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xffB4EFDD),
            ),
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/A14.png",
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: Icon(
                    Icons.bar_chart,
                    color: Color(0xff9672FB),
                  ),
                ),
                Container(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 60, 10, 0),
                      child: Text(
                        "Total Balance",
                        style: homeTotB,
                        textAlign: TextAlign.center,
                      ),
                    )),
                Container(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 90, 10, 0),
                      child: Text(
                        "N0.00",
                        style: homeTotBAmount,
                        textAlign: TextAlign.center,
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(height: 32.0),
          Container(
            width: double.infinity,
            height: 256,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 10), // changes position of shadow
                  ),
                ]),
            child: Column(
              children: [
                Container(
                    height: 87,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff9672FB),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            child: Text(
                              "Providus Bank",
                              style: whiteTextBold15,
                              textAlign: TextAlign.left,
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Container(
                            width: double.infinity,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: "0211109097 ",
                                      style: whiteTextBold10),
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.copy,
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                SizedBox(height: 12.0),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: Column(
                    children: [
                      Text("Available balance", style: colordTextBold10),
                      SizedBox(height: 8.0),
                      Text("N0.00", style: colordTextBold20),
                    ],
                  ),
                ),
                Container(
                    height: 100,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff9672FB),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 7.0),
                                Icon(Icons.login, color: Colors.white),
                                SizedBox(height: 3.0),
                                Text("Save", style: whiteTextBold10),
                              ],
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff9672FB),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 7.0),
                                Icon(Icons.open_in_full, color: Colors.white),
                                SizedBox(height: 3.0),
                                Text("Transfer", style: whiteTextBold10),
                              ],
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff9672FB),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 7.0),
                                Icon(Icons.arrow_forward, color: Colors.white),
                                SizedBox(height: 3.0),
                                Text("Withdraw", style: whiteTextBold10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
