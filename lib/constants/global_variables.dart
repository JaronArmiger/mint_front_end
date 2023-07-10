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

  static const Map<String, Color> productTraitColors = {
    "Organic": Color.fromARGB(255, 119, 217, 144),
    "In Season": Color.fromARGB(255, 237, 229, 138),
    "End of Season": Color.fromARGB(255, 235, 176, 82),
    "Ripened": Color.fromARGB(255, 254, 124, 117),
  };

  static const List<Map<String, String>> produceCategories = [
    {
      'title': 'Apples',
      'image': 'assets/images/produce_icons/apples.png',
    },
    {
      'title': 'Avocados',
      'image': 'assets/images/produce_icons/avocados.png',
    },
    {
      'title': 'Bananas',
      'image': 'assets/images/produce_icons/bananas.png',
    },
    {
      'title': 'Blueberries',
      'image': 'assets/images/produce_icons/blueberries.png',
    },
    {
      'title': 'Broccoli',
      'image': 'assets/images/produce_icons/broccoli.png',
    },
    {
      'title': 'Cabbage',
      'image': 'assets/images/produce_icons/cabbage.png',
    },
    {
      'title': 'Carrots',
      'image': 'assets/images/produce_icons/carrots.png',
    },
    {
      'title': 'Corn',
      'image': 'assets/images/produce_icons/corn.png',
    },
    {
      'title': 'Kale',
      'image': 'assets/images/produce_icons/kale.png',
    },
    {
      'title': 'Lemons',
      'image': 'assets/images/produce_icons/lemons.png',
    },
    {
      'title': 'Lettuce',
      'image': 'assets/images/produce_icons/lettuce.png',
    },
    {
      'title': 'Oranges',
      'image': 'assets/images/produce_icons/oranges.png',
    },
    {
      'title': 'Pears',
      'image': 'assets/images/produce_icons/pears.png',
    },
    {
      'title': 'Pumpkins',
      'image': 'assets/images/produce_icons/pumpkins.png',
    },
    {
      'title': 'Squash',
      'image': 'assets/images/produce_icons/squash.png',
    },
    {
      'title': 'Strawberries',
      'image': 'assets/images/produce_icons/strawberries.png',
    },
    {
      'title': 'Tomatoes',
      'image': 'assets/images/produce_icons/tomatoes.png',
    },
  ];
}
