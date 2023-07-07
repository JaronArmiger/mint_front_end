import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mint_front_end/constants/error_handling.dart';

import '../../../common/snackbar_global.dart';
import '../../../constants/env_vars.dart';
import '../../../models/user.dart';

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
            'sign up successful (CHANGE THIS)',
          );
        },
      );
    } catch (e) {
      SnackbarGlobal.show(e.toString());
    }
  }
}
