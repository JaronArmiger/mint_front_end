import 'package:flutter/material.dart';
import 'package:mint_front_end/common/widgets/custom_textfield.dart';
import 'package:mint_front_end/features/auth/services/auth_service.dart';

import '../../../constants/global_variables.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/signup-screen';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final AuthService authService = AuthService();

  final _signUpFormKey = GlobalKey<FormState>();

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // final TextEditingController _passwordConfirmController =
  //     TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _passwordController.dispose();
    // _passwordConfirmController.dispose();
  }

  void signUpUser() {
    authService.signUpUser(
      context: context,
      firstName: _firstNameController.text,
      lastName: _lastNameController.text,
      email: _emailController.text,
      phoneNumber: _phoneNumberController.text,
      password: _passwordController.text,
    );
  }

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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _signUpFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'First Name',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        child: CustomTextField(
                          controller: _firstNameController,
                          hintText: 'Ex: Frida',
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Last Name',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        child: CustomTextField(
                          controller: _lastNameController,
                          hintText: 'Ex: Kahlo',
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        child: CustomTextField(
                          controller: _emailController,
                          hintText: 'Ex: fridakahlo@coyoacan.com',
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Phone Number',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        child: CustomTextField(
                          controller: _phoneNumberController,
                          hintText: 'Ex: 6789998212',
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        child: CustomTextField(
                          controller: _passwordController,
                          hintText: 'Ex: scoobyDOO??29',
                          isPassword: true,
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 180,
                  child: ElevatedButton(
                    onPressed: signUpUser,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: GlobalVariables.darkGreen,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Complete',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 23,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
