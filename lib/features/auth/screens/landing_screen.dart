import 'package:flutter/material.dart';
import 'package:mint_front_end/constants/global_variables.dart';
import 'package:mint_front_end/features/auth/screens/signup_screen_a.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  void navigateToSignupScreenA() {
    Navigator.pushNamed(context, SignupScreenA.routeName);
  }

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
                          fontSize: 99,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -1,
                          color: GlobalVariables.darkGreen,
                        ),
                      ),
                      const SizedBox(height: 80),
                      SizedBox(
                        height: 60,
                        width: 180,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: GlobalVariables.darkGreen,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 23,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 60,
                        width: 180,
                        child: ElevatedButton(
                          onPressed: navigateToSignupScreenA,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                              side: BorderSide(
                                color: GlobalVariables.darkGreen,
                                width: 2,
                              ),
                            ),
                          ),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: GlobalVariables.darkGreen,
                              fontWeight: FontWeight.w600,
                              fontSize: 23,
                              letterSpacing: -1,
                            ),
                          ),
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
