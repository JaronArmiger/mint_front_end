// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mint_front_end/constants/error_handling.dart';
import 'package:mint_front_end/features/user/main/screens/user_main.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/snackbar_global.dart';
import '../../../constants/env_vars.dart';
import '../../../models/user.dart';
import '../../../providers/user_provider.dart';

class AuthService {
  void signUpUser({
    required BuildContext context,
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String password,
  }) async {
    try {
      User user = User(
        id: '',
        firstName: firstName,
        lastName: lastName,
        email: email,
        phoneNumber: phoneNumber,
        password: password,
        address: '',
        role: '',
      );

      http.Response res = await http.post(
        Uri.parse('$uri/api/auth/signup'),
        body: user.toJson(),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          SnackbarGlobal.show(
            'Account created! Signing you in...',
          );
          signInUser(
            context: context,
            email: email,
            password: password,
          );
        },
      );
    } catch (e) {
      SnackbarGlobal.show(e.toString());
    }
  }

  void signInUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      http.Response res = await http.post(
        Uri.parse('$uri/api/auth/signin'),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () async {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          Provider.of<UserProvider>(context, listen: false).setUser(res.body);
          await prefs.setString('x-auth-token', jsonDecode(res.body)['token']);

          SnackbarGlobal.show(
            'Signing you in...',
          );

          if (context.mounted) {
            Navigator.pushNamedAndRemoveUntil(
              context,
              UserMain.routeName,
              (route) => false,
            );
          }
        },
      );
    } catch (e) {
      SnackbarGlobal.show(e.toString());
    }
  }
}
