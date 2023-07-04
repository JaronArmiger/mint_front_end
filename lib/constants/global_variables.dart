import 'package:flutter/material.dart';

class GlobalVariables {
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 9, 135, 102),
      Color.fromARGB(255, 84, 235, 167),
    ],
    stops: [0.1, 0.8],
  );

  // static const lightGreen = Color.fromRGBO(152, 235, 180, 1);
  static const lightGreen = Color.fromARGB(255, 84, 235, 167);
  static const darkGreen = Color.fromRGBO(9, 135, 102, 1);
  static const extraDarkGreen = Color.fromRGBO(46, 97, 74, 1);

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;
}
