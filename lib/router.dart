import 'package:flutter/material.dart';
import 'package:mint_front_end/features/auth/screens/signup_screen_a.dart';
import 'package:mint_front_end/features/user/home/screens/produce_category_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case ProduceCategoryScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => ProduceCategoryScreen(
          category: category,
        ),
      );
    case SignupScreenA.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SignupScreenA(),
      );
    default:
      return MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist'),
          ),
        ),
      );
  }
}
