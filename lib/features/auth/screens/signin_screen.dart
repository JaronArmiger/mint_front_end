import 'package:flutter/material.dart';
import 'package:mint_front_end/common/widgets/custom_textfield.dart';
import 'package:mint_front_end/features/auth/services/auth_service.dart';

import '../../../constants/global_variables.dart';

class SignInScreen extends StatefulWidget {
  static const String routeName = '/signin-screen';
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final AuthService authService = AuthService();

  final _signInFormKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void signInUser() {
    authService.signInUser(
      context: context,
      email: _emailController.text,
      password: _passwordController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 20),
              Text(
                'Sign In',
                style: TextStyle(
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
            key: _signInFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                    onPressed: signInUser,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
