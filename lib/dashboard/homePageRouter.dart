import 'package:flutter/material.dart';
import 'package:pennee/dashboard/dashboard.dart';
import 'package:pennee/dashboard/pages/profilePage.dart';
import 'package:pennee/dashboard/pages/referal_levelPage.dart';

import 'home.dart';

class homePageRouter extends StatelessWidget {
  const homePageRouter({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home_page(),
      onGenerateRoute: (settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case 'home_page':
            builder = (BuildContext _) => home_page();
            break;
          case 'profile_page':
            builder = (BuildContext _) => profile_page(
                // onSignupComplete: () {
                //   Navigator.of(context).pop();
                // },
                );
            break;
          case 'referal_levelPage':
            builder = (BuildContext _) => referal_levelPage();
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
