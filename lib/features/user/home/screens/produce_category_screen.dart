import 'package:flutter/material.dart';

import '../../../../constants/global_variables.dart';
import '../../../../models/product.dart';

class ProduceCategoryScreen extends StatefulWidget {
  static const String routeName = '/produce-category';
  final String category;
  const ProduceCategoryScreen({
    super.key,
    required this.category,
  });

  @override
  State<ProduceCategoryScreen> createState() => _ProduceCategoryScreenState();
}

class _ProduceCategoryScreenState extends State<ProduceCategoryScreen> {
  List<Product>? products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/mint_logo_01.png',
                width: 40,
              ),
              const SizedBox(width: 20),
              const Text(
                'mint',
                style: TextStyle(
                  color: GlobalVariables.darkGreen,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
