import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:pennee/login.dart';
import 'package:pennee/register1.dart';
import 'package:pennee/utilities/styles.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 5;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  LiquidController liquidController;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    if(_currentPage < (_numPages-1)){
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
  }
    return list;
  
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

  _setindicatorColor(isActive){
    if(isActive){
      if(_currentPage == 1 || _currentPage == 3){
        return Color(0xff9672FB);
      }else{
        return Colors.white;
      }
    }else{
      if(_currentPage == 1 || _currentPage == 3){
         return Colors.white;
      }else{
         return Color(0xff9672FB);
      }
    }
  }

    _setPageColor(){
    
      if(_currentPage == 1 || _currentPage == 3){
        return Colors.white;
      }else{
        return Color(0xff9672FB);
      }
    
  }

      _setPageColorTXT(){
    
      if(_currentPage == 1 || _currentPage == 3){
        return onboardingNextBtnTXTThemeColor;
      }else{
        return onboardingNextBtnTXT;
      }
    
  }

   _setPageColorskipTXT(){
    
      if(_currentPage == 1 || _currentPage == 3){
        return skipStyleWhite;
      }else{
        return skipStyle;
      }
    
  }

  _getSkipButton(){
    if(_currentPage < (_numPages-1)){
    return FlatButton(
                    onPressed: () => print('Skip'),
                    child: Text(
                      'Skip',
                      style: _setPageColorskipTXT()
                    ),
                  );
    }

  }

  _canDisableUserGesture(){
     if(_currentPage < (_numPages-1)){
       return false;
     }else{
       return true;
     }
  }

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => LoginScreen(),
    transitionDuration: Duration(milliseconds: 1000),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0,1.0);
      var end = Offset.zero;
      var curve = Curves.fastLinearToSlowEaseIn;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Route _createRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Register1Screen(),
    transitionDuration: Duration(milliseconds: 1000),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(0.0,1.0);
      var end = Offset.zero;
      var curve = Curves.fastLinearToSlowEaseIn;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

  @override
  void initState() {
    liquidController = LiquidController();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.blue,
        child:              
         Stack(children: [
           LiquidSwipe(
                    onPageChangeCallback: pageChangeCallback,
                    waveType: WaveType.circularReveal,
                    ignoreUserGestureWhileAnimating: true,
                    enableLoop: false,
                    fullTransitionValue:200,
                    disableUserGesture: _canDisableUserGesture(),
                    pages: <Widget>[
                      Container(
                        color: Color(0xffF6F6F9),
                        child:Padding(
                        padding: EdgeInsets.fromLTRB(54, 116, 54, 11),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(child:Text(
                              'Welcome to the Pennee mobile app!',
                              style: peneeOnboardingTitle,
                              textAlign: TextAlign.center,
                            )),
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/A3.png',
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                      ),
                      Container(
                        color: Color(0xff9672FB),
                        child:Padding(
                        padding: EdgeInsets.fromLTRB(54, 116, 54, 11),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(child:Text(
                              'Make sales and record transactions',
                              style: peneeOnboardingTitleWhite,
                              textAlign: TextAlign.center,
                            )),
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/A4.png',
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                      ),
                      Container(
                        color: Color(0xffF6F6F9),
                        child:Padding(
                        padding: EdgeInsets.fromLTRB(54, 116, 54, 11),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(child:Text(
                              'Receive payments and pay bills',
                              style: peneeOnboardingTitle,
                              textAlign: TextAlign.center,
                            )),
                            SizedBox(height: 64),
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/A5.png',
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                      ),
                      Container(
                        color: Color(0xff9672FB),
                        child:Padding(
                        padding: EdgeInsets.fromLTRB(54, 116, 54, 11),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(child:Text(
                              'Analyze and manage your business',
                              style: peneeOnboardingTitleWhite,
                              textAlign: TextAlign.center,
                            )),
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/A6.png',
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                      ),
                      Container(
                        color: Color(0xffF6F6F9),
                        child:Padding(
                        padding: EdgeInsets.fromLTRB(54, 116, 54, 11),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(child:Text(
                              'Access loans',
                              style: peneeOnboardingTitle,
                              textAlign: TextAlign.center,
                            )),
                            SizedBox(height: 16),
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/A7.png',
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                      ),
                    
                      ],
                  ),
         Container(
                  alignment: Alignment(0.9, -0.9),
                  child: _getSkipButton()
                ),

                Container(
                  alignment: FractionalOffset.bottomCenter,
                  child:  Padding(padding: EdgeInsets.fromLTRB(0, 1, 0, 200),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                  )
                ),
         

                // _currentPage != _numPages - 1
                //     ? Expanded(
                //         child: Padding(padding: EdgeInsets.fromLTRB(0, 1, 0, 50),
                //         child: Align(
                //           alignment: FractionalOffset.bottomCenter,
                //           child: FlatButton(
                //             color: _setPageColor(),
                //             minWidth: 111,
                //             height: 62,
                //             shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(31),
                //             side: BorderSide(color: _setPageColor())
                //           ),
                //             onPressed: () {
                //               pageChangeCallback(1);
                //             },
                //             child: Row(
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               mainAxisSize: MainAxisSize.min,
                //               children: <Widget>[
                //                 Text(
                //                   'Next',
                //                   style: _setPageColorTXT()
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ),

                //         )                      )
                //     : Text(''),
         ],
         )
      ),
            bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 200.0,
              width: double.infinity,
              color: Color(0xffF6F6F9),
              child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                FlatButton(
                            color: _setPageColor(),
                            minWidth: 295,
                            height: 62,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(31),
                            side: BorderSide(color: _setPageColor())
                          ),
                            onPressed: () {
                              Navigator.of(context).push(_createRoute());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Log in',
                                  style: _setPageColorTXT()
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          FlatButton(
                            color: Color(0xffF6F6F9),
                            minWidth: 295,
                            height: 62,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(31),
                            side: BorderSide(color: _setPageColor())
                          ),
                            onPressed: () {
                              Navigator.of(context).push(_createRoute2());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Create account',
                                  style: onboardingNextBtnTXTThemeColor
                                ),
                              ],
                            ),
                          ),
                              ],
                            ),
            )
          : Text(''),
    );
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(
           color: Color(0xffF6F6F9)
          ),
          child: Stack(
            children: <Widget>[
              
              // LiquidSwipe(
              //       onPageChangeCallback: pageChangeCallback,
              //       waveType: WaveType.circularReveal,
              //       ignoreUserGestureWhileAnimating: true,
              //       enableLoop: false,
              //       fullTransitionValue:200,
              //       disableUserGesture: _canDisableUserGesture(),
              //       pages: <Widget>[
              //         Container(
              //           color: Color(0xffF6F6F9),
              //           child:Padding(
              //           padding: EdgeInsets.fromLTRB(54, 116, 54, 11),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: <Widget>[
              //               Center(child:Text(
              //                 'Welcome to the Pennee mobile app!',
              //                 style: peneeOnboardingTitle,
              //                 textAlign: TextAlign.center,
              //               )),
              //               Center(
              //                 child: Image(
              //                   image: AssetImage(
              //                     'assets/images/A3.png',
              //                   ),
              //                 ),
              //               ),
                            
              //             ],
              //           ),
              //         ),
              //         ),
              //         Container(
              //           color: Color(0xff9672FB),
              //           child:Padding(
              //           padding: EdgeInsets.fromLTRB(54, 116, 54, 11),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: <Widget>[
              //               Center(child:Text(
              //                 'Make sales and record transactions',
              //                 style: peneeOnboardingTitleWhite,
              //                 textAlign: TextAlign.center,
              //               )),
              //               Center(
              //                 child: Image(
              //                   image: AssetImage(
              //                     'assets/images/A4.png',
              //                   ),
              //                 ),
              //               ),
                            
              //             ],
              //           ),
              //         ),
              //         ),
              //         Container(
              //           color: Color(0xffF6F6F9),
              //           child:Padding(
              //           padding: EdgeInsets.fromLTRB(54, 116, 54, 11),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: <Widget>[
              //               Center(child:Text(
              //                 'Receive payments and pay bills',
              //                 style: peneeOnboardingTitle,
              //                 textAlign: TextAlign.center,
              //               )),
              //               SizedBox(height: 64),
              //               Center(
              //                 child: Image(
              //                   image: AssetImage(
              //                     'assets/images/A5.png',
              //                   ),
              //                 ),
              //               ),
                            
              //             ],
              //           ),
              //         ),
              //         ),
              //         Container(
              //           color: Color(0xff9672FB),
              //           child:Padding(
              //           padding: EdgeInsets.fromLTRB(54, 116, 54, 11),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: <Widget>[
              //               Center(child:Text(
              //                 'Analyze and manage your business',
              //                 style: peneeOnboardingTitleWhite,
              //                 textAlign: TextAlign.center,
              //               )),
              //               Center(
              //                 child: Image(
              //                   image: AssetImage(
              //                     'assets/images/A6.png',
              //                   ),
              //                 ),
              //               ),
                            
              //             ],
              //           ),
              //         ),
              //         ),
              //         Container(
              //           color: Color(0xffF6F6F9),
              //           child:Padding(
              //           padding: EdgeInsets.fromLTRB(54, 116, 54, 11),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: <Widget>[
              //               Center(child:Text(
              //                 'Access loans',
              //                 style: peneeOnboardingTitle,
              //                 textAlign: TextAlign.center,
              //               )),
              //               SizedBox(height: 16),
              //               Center(
              //                 child: Image(
              //                   image: AssetImage(
              //                     'assets/images/A7.png',
              //                   ),
              //                 ),
              //               ),
                            
              //             ],
              //           ),
              //         ),
              //         ),
                    
              //         ],
              //     ),
         
         Container(
                  alignment: Alignment(0.9, -0.9),
                  child: _getSkipButton()
                ),

                Container(
                  alignment: FractionalOffset.bottomCenter,
                  child:  Padding(padding: EdgeInsets.fromLTRB(0, 1, 0, 200),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                  )
                ),
         
                _currentPage != _numPages - 1
                    ? Expanded(
                        child: Padding(padding: EdgeInsets.fromLTRB(0, 1, 0, 50),
                        child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: FlatButton(
                            color: _setPageColor(),
                            minWidth: 111,
                            height: 62,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(31),
                            side: BorderSide(color: _setPageColor())
                          ),
                            onPressed: () {
                              pageChangeCallback(1);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Next',
                                  style: _setPageColorTXT()
                                ),
                              ],
                            ),
                          ),
                        ),

                        )                      )
                    : Text(''),
              
            ],
          )  
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 200.0,
              width: double.infinity,
              color: Color(0xffF6F6F9),
              child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                FlatButton(
                            color: _setPageColor(),
                            minWidth: 295,
                            height: 62,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(31),
                            side: BorderSide(color: _setPageColor())
                          ),
                            onPressed: () {
                              Navigator.of(context).push(_createRoute());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Log in',
                                  style: _setPageColorTXT()
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          FlatButton(
                            color: Color(0xffF6F6F9),
                            minWidth: 295,
                            height: 62,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(31),
                            side: BorderSide(color: _setPageColor())
                          ),
                            onPressed: () {
                              Navigator.of(context).push(_createRoute2());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Create account',
                                  style: onboardingNextBtnTXTThemeColor
                                ),
                              ],
                            ),
                          ),
                              ],
                            ),
            )
          : Text(''),
    );

  }
  pageChangeCallback(int lpage) {
    setState(() {
      _currentPage = lpage;
      _buildPageIndicator();
    });
  }
}
