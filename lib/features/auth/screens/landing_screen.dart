import 'package:flutter/material.dart';
import 'package:mint_front_end/constants/global_variables.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: GlobalVariables.appBarGradient,
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/mint_logo_02.png',
                        width: 100,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'mint',
                        style: TextStyle(
                          fontSize: 55,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -1,
                          color: GlobalVariables.darkGreen,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
