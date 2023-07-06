import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../../../common/snackbar_global.dart';
import '../../../../constants/env_vars.dart';
import '../../../../models/product.dart';

class HomeService {
  Future<List<Product>> fetchCategoryProducts({
    required BuildContext context,
    required String categoryId,
  }) async {
    List<Product> productList = [];

    try {
      http.Response res = await http.get(
        Uri.parse(
            '$uri/api/category/products-by-category?category=$categoryId'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          // 'x-'
        },
      );
    } catch (e) {
      SnackbarGlobal.show(e.toString());
    }
  }
}
