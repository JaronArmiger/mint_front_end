// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mint_front_end/constants/error_handling.dart';
import 'package:provider/provider.dart';

import '../../../../common/snackbar_global.dart';
import '../../../../constants/env_vars.dart';
import '../../../../models/category.dart';
import '../../../../models/product.dart';
import '../../../../providers/user_provider.dart';

class HomeService {
  Future<List<Category>> fetchAllCategories({
    required BuildContext context,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    List<Category> categoryList = [];
    try {
      http.Response res = await http.get(
        Uri.parse('$uri/api/category/all'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
      );

      var decodedRes = jsonDecode(res.body);

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          for (int i = 0; i < decodedRes.length; i++) {
            categoryList.add(
              Category.fromJson(
                jsonEncode(decodedRes[i]),
              ),
            );
          }
        },
      );
    } catch (e) {
      SnackbarGlobal.show(e.toString());
    }
    return categoryList;
  }

  Future<Category> fetchCategory({
    required BuildContext context,
    required String categoryName,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    Category category =
        Category(name: 'Not found', image: categoryNotFoundImageUri);

    try {
      http.Response res = await http.get(
        Uri.parse('$uri/api/category/single-category/$categoryName'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
      );

      var decodedRes = jsonDecode(res.body);

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          category = Category.fromJson(jsonEncode(decodedRes));
        },
      );
    } catch (e) {
      SnackbarGlobal.show(e.toString());
    }

    return category;
  }

  Future<List<Product>> fetchCategoryProducts({
    required BuildContext context,
    required String categoryName,
  }) async {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    List<Product> productList = [];

    try {
      http.Response res = await http.get(
        Uri.parse('$uri/api/category/products-by-category/categoryName'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'x-auth-token': userProvider.user.token,
        },
      );

      var decodedRes = jsonDecode(res.body);

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          for (int i = 0; i < decodedRes.length; i++) {
            productList.add(
              Product.fromJson(
                jsonEncode(decodedRes[i]),
              ),
            );
          }
        },
      );
    } catch (e) {
      SnackbarGlobal.show(e.toString());
    }

    return productList;
  }
}
