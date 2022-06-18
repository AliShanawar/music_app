import 'package:flutter/material.dart';
import 'package:music_app/presntation/homecreator/home_screen.dart';
import 'package:music_app/presntation/homeuser/home_user_screen.dart';
import 'package:music_app/presntation/homeuser/home_user_setting.dart';

import 'package:music_app/presntation/resources/strings_manager.dart';

class Routes {
  static const String HomeUserSetting = "/HomeUserSetting";
  static const String homeRoute = "/home";
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => MyHomePage());
      case Routes.HomeUserSetting:
        return MaterialPageRoute(builder: (_) => HomeUserSetting());

      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text(AppStrings.noRouteFound),
                  ),
                ));
    }
  }
}
