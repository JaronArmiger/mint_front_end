import 'package:flutter/material.dart';

class WelcomeBar extends StatefulWidget {
  const WelcomeBar({super.key});

  @override
  State<WelcomeBar> createState() => _WelcomeBarState();
}

class _WelcomeBarState extends State<WelcomeBar> {
  String userFirstName = 'Lucas';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      // color: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(
          'Welcome, $userFirstName!',
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w600,
            letterSpacing: -1,
          ),
        ),
      ),
    );
  }
}
