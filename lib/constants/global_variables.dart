import 'package:flutter/material.dart';

class GlobalVariables {
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 9, 135, 102),
      Color.fromARGB(255, 84, 235, 167),
    ],
    stops: [0.1, 0.8],
    begin: Alignment(0, -1),
    end: Alignment(0, 1),
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

  static const List<Map<String, String>> produceCategories = [
    {
      'title': 'apples',
      'image': 'assets/images/produce_icons/apples.png',
    },
    {
      'title': 'avocados',
      'image': 'assets/images/produce_icons/avocados.png',
    },
    {
      'title': 'bananas',
      'image': 'assets/images/produce_icons/bananas.png',
    },
    {
      'title': 'blueberries',
      'image': 'assets/images/produce_icons/blueberries.png',
    },
    {
      'title': 'broccoli',
      'image': 'assets/images/produce_icons/broccoli.png',
    },
    {
      'title': 'cabbage',
      'image': 'assets/images/produce_icons/cabbage.png',
    },
    {
      'title': 'carrots',
      'image': 'assets/images/produce_icons/carrots.png',
    },
    {
      'title': 'corn',
      'image': 'assets/images/produce_icons/corn.png',
    },
    {
      'title': 'kale',
      'image': 'assets/images/produce_icons/kale.png',
    },
    {
      'title': 'lemons',
      'image': 'assets/images/produce_icons/lemons.png',
    },
    {
      'title': 'lettuce',
      'image': 'assets/images/produce_icons/lettuce.png',
    },
    {
      'title': 'oranges',
      'image': 'assets/images/produce_icons/oranges.png',
    },
    {
      'title': 'pears',
      'image': 'assets/images/produce_icons/pears.png',
    },
    {
      'title': 'pumpkins',
      'image': 'assets/images/produce_icons/pumpkins.png',
    },
    {
      'title': 'squash',
      'image': 'assets/images/produce_icons/squash.png',
    },
    {
      'title': 'strawberries',
      'image': 'assets/images/produce_icons/strawberries.png',
    },
    {
      'title': 'tomatoes',
      'image': 'assets/images/produce_icons/tomatoes.png',
    },
  ];
}
