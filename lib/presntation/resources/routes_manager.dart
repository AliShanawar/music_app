import 'package:flutter/material.dart';
import 'package:music_app/presntation/home/home.dart';
import 'package:music_app/presntation/homecreator/home_screen.dart';
import 'package:music_app/presntation/homeuser/home_user_setting.dart';
import 'package:music_app/presntation/partydetails/edit_party.dart';

import 'package:music_app/presntation/resources/strings_manager.dart';

class Routes {
  static const String homeUserSetting = "/HomeUserSetting";
  static const String homeRoute = "/homecreator";
  static const String home = "/home";
  static const String editParty = "/editParty";
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => Home());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => MyHomePage());
      case Routes.homeUserSetting:
        return MaterialPageRoute(builder: (_) => HomeUserSetting());
      case Routes.editParty:
        return MaterialPageRoute(builder: (_) => EditParty());

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
