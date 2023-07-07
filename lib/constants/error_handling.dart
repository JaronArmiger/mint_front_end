import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:mint_front_end/common/snackbar_global.dart';

void httpErrorHandle({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess,
}) {
  switch (response.statusCode) {
    case 200:
      onSuccess();
      break;
    case 400:
      SnackbarGlobal.show(jsonDecode(response.body)['msg']);
    case 500:
      SnackbarGlobal.show(jsonDecode(response.body)['error']);
    default:
      SnackbarGlobal.show(jsonDecode(response.body));
  }
}
