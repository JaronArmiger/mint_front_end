import 'package:flutter/material.dart';

import '../../../common/snackbar_global.dart';

class AuthService {
  void signUpUser({
    required BuildContext context,
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String password,
  }) async {
    try {} catch (e) {
      SnackbarGlobal.show(e.toString());
    }
  }
}
