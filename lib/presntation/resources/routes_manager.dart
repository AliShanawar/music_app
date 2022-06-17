import 'package:flutter/material.dart';
import 'package:music_app/presntation/homecreator/home_screen.dart';
import 'package:music_app/presntation/onboard/onboard.dart';
import 'package:music_app/presntation/resources/strings_manager.dart';

class Routes {
  static const String onBoardingRoute = "/onBoarding";
  static const String homeRoute = "/home";
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => MyHomePage());

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
