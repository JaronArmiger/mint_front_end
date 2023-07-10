import 'package:flutter/material.dart';
import 'package:mint_front_end/features/auth/screens/signup_screen.dart';
import 'package:mint_front_end/features/user/home/screens/produce_category_screen.dart';
import 'package:mint_front_end/features/user/product_details/screens/product_details_screen.dart';

import 'features/auth/screens/signin_screen.dart';
import 'features/user/main/screens/user_main.dart';
import 'models/product.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case UserMain.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const UserMain(),
      );
    case ProduceCategoryScreen.routeName:
      var category = routeSettings.arguments as Map<String, String>;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => ProduceCategoryScreen(
          category: category,
        ),
      );
    case SignUpScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SignUpScreen(),
      );
    case SignInScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SignInScreen(),
      );
    case ProductDetailsScreen.routeName:
      var product = routeSettings.arguments as Product;
      return MaterialPageRoute(
        builder: (_) => ProductDetailsScreen(
          product: product,
        ),
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
