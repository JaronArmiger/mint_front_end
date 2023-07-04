import 'package:flutter/material.dart';
import 'package:mint_front_end/features/user/home/widgets/quick_shop.dart';
import 'package:mint_front_end/features/user/home/widgets/welcome_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        WelcomeBar(),
        QuickShop(),
      ],
    ));
  }
}
