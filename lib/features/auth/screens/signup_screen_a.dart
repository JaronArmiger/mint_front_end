import 'package:flutter/material.dart';

import '../../../constants/global_variables.dart';

class SignupScreenA extends StatefulWidget {
  static const String routeName = '/signup-screen-a';
  const SignupScreenA({super.key});

  @override
  State<SignupScreenA> createState() => _SignupScreenAState();
}

class _SignupScreenAState extends State<SignupScreenA> {
  final _signUpFormKey = GlobalKey<FormState>();

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController =
      TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _passwordController.dispose();
    _passwordConfirmController.dispose();
  }

  void signUpUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          flexibleSpace: Container(
              // decoration: const BoxDecoration(
              //   gradient: GlobalVariables.appBarGradient,
              // ),
              ),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Image.asset(
              //   'assets/images/mint_logo_01.png',
              //   width: 40,
              // ),
              SizedBox(width: 20),
              Text(
                'Sign Up',
                style: TextStyle(
                  // color: GlobalVariables.darkGreen,
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Sign Up',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
