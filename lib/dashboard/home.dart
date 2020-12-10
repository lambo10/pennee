import 'package:flutter/material.dart';
import 'package:pennee/dashboard/modals/withdrawModal.dart';
import 'package:pennee/dashboard/pages/profilePage.dart';
import 'package:pennee/utilities/styles.dart';

import 'modals/transferModal.dart';

class home_page extends StatefulWidget {
  const home_page({Key key}) : super(key: key);
  @override
  _main createState() => _main();
}

class _main extends State<home_page> with SingleTickerProviderStateMixin {
  AnimationController controller;

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: TabBar(
                labelColor: Color(0xff232949),
                unselectedLabelColor: Color(0xff7A7991),
                indicatorColor: Color(0xff9672FB),
                labelStyle: homeTabeTXT_h,
                unselectedLabelStyle: homeTabeTXT_h,
                tabs: [
                  Tab(text: "Transactions"),
                  Tab(text: "Deposits"),
                ]),
          ),
          Container(
            //Add this to give height
            height: (MediaQuery.of(context).size.height - 200),
            child: TabBarView(children: [
              Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            SizedBox(height: 60.0),
                            Text(
                              "No Transactions",
                              style: noTransacTXT,
                            ),
                            SizedBox(height: 32.0),
                            Text(
                              "yet",
                              style: noTransacTXT,
                            ),
                            SizedBox(height: 65.0),
                            Image.asset("assets/images/A16_3.png"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            SizedBox(height: 60.0),
                            Text(
                              "No Deposits",
                              style: noTransacTXT,
                            ),
                            SizedBox(height: 32.0),
                            Text(
                              "yet",
                              style: noTransacTXT,
                            ),
                            SizedBox(height: 65.0),
                            Image.asset("assets/images/A16_4.png"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

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
            body: Padding(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushNamed("profile_page");
                                    },
                                    child: Container(
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
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child:
                                        Text("Beryl Tops", style: homeUserName),
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
                                  Navigator.of(context)
                                      .pushNamed("referal_levelPage");
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
                      ),
                      SizedBox(height: 12.0),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
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
                                      TextSpan(
                                          text: "Gideon!", style: HelloTitle),
                                      WidgetSpan(
                                          child: Image.asset(
                                        "assets/images/homeHand.png",
                                        width: 40,
                                        height: 40,
                                      )),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
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
                      ),
                      SizedBox(height: 14.0),
                      Container(
                        width: double.infinity,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Text(
                            "Pennee Box",
                            style: penneBoxTxt,
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
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
                                  offset: Offset(0, 10),
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
                                    Text("Available balance",
                                        style: colordTextBold10),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 60,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            color: Color(0xff9672FB),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(15)),
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(height: 7.0),
                                              Icon(Icons.login,
                                                  color: Colors.white),
                                              SizedBox(height: 3.0),
                                              Text("Save",
                                                  style: whiteTextBold10),
                                            ],
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (_) => transferModal(),
                                            );
                                          },
                                          child: Container(
                                            width: 60,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              color: Color(0xff9672FB),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15)),
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(height: 7.0),
                                                Icon(Icons.open_in_full,
                                                    color: Colors.white),
                                                SizedBox(height: 3.0),
                                                Text("Transfer",
                                                    style: whiteTextBold10),
                                              ],
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            showDialog(
                                              context: context,
                                              builder: (_) => withdrawModal(),
                                            );
                                          },
                                          child: Container(
                                            width: 60,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              color: Color(0xff9672FB),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(15)),
                                            ),
                                            child: Column(
                                              children: [
                                                SizedBox(height: 7.0),
                                                Icon(Icons.arrow_forward,
                                                    color: Colors.white),
                                                SizedBox(height: 3.0),
                                                Text("Withdraw",
                                                    style: whiteTextBold10),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Wallet",
                                    style: homeTotB,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Icon(
                                            Icons.arrow_back,
                                            size: 23,
                                            color: Color(0xff232949),
                                          ),
                                        ),
                                        TextSpan(
                                            text: "   ",
                                            style: whiteTextBold10),
                                        WidgetSpan(
                                          child: Icon(
                                            Icons.arrow_forward,
                                            size: 23,
                                            color: Color(0xff232949),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                                  child: Container(
                                      width: double.infinity,
                                      height: 156,
                                      child: Stack(
                                        children: [
                                          Column(
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                child: RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                          text: "Oops! ",
                                                          style: home_oppsTXT),
                                                      WidgetSpan(
                                                        child: Icon(
                                                          Icons
                                                              .account_balance_wallet,
                                                          size: 19,
                                                          color:
                                                              Color(0xff232949),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              SizedBox(height: 10.0),
                                              Container(
                                                  width: double.infinity,
                                                  child: Text(
                                                    "No Wallet",
                                                    style: home_oppsTXT,
                                                    textAlign: TextAlign.left,
                                                  ))
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 10),
                                            child: Image.asset(
                                              "assets/images/A16.png",
                                              fit: BoxFit.cover,
                                            ),
                                          )
                                        ],
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(88, 0, 88, 10),
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
                              Text('Create New Wallet',
                                  style: onboardingNextBtnTXT),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Container(
                          width: double.infinity,
                          height: 176,
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
                                  offset: Offset(0, 10),
                                ),
                              ]),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/A16_2.png",
                              ),
                              Container(
                                  child: Flexible(
                                      child: Padding(
                                padding: EdgeInsets.fromLTRB(21, 33, 21, 10),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Welcome to Pennee!",
                                        style: low_WelcomeTo_peneeTXT,
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    Container(
                                        child: Text(
                                      "Build your business with us",
                                      style: low_WelcomeTo_peneeTXT_sub,
                                      textAlign: TextAlign.left,
                                    )),
                                    Container(
                                        child: Text(
                                      "Hello Mogul 😉, welcome to pennee. Here we offer Business tools and we aid businesses to scale with a profit...",
                                      style: low_WelcomeTo_mainTXT,
                                      textAlign: TextAlign.left,
                                    ))
                                  ],
                                ),
                              )))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.all(20),
                          child: Container(
                            child: _tabSection(context),
                          ))
                    ],
                  ),
                ))));
  }
}
