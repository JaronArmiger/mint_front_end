import 'package:flutter/material.dart';
import 'package:mint_front_end/features/user/home/screens/produce_item.dart';
import 'package:mint_front_end/features/user/home/services/home_service.dart';

import '../../../../common/widgets/loader.dart';
import '../../../../constants/global_variables.dart';
import '../../../../models/category.dart';
import '../../../../models/product.dart';

class ProduceCategoryScreen extends StatefulWidget {
  static const String routeName = '/produce-category';
  final Map<String, String> category;
  const ProduceCategoryScreen({
    super.key,
    required this.category,
  });

  @override
  State<ProduceCategoryScreen> createState() => _ProduceCategoryScreenState();
}

class _ProduceCategoryScreenState extends State<ProduceCategoryScreen> {
  List<Product>? productList;
  final HomeService homeService = HomeService();

  @override
  void initState() {
    super.initState();
    // fetchCategory();
    // fetchCategoryProducts();
  }

  // void fetchCategory() async {
  //   category = await homeService.fetchCategory(
  //       context: context, categoryName: widget.categoryName);
  //   if (mounted) {
  //     setState(() {});
  //   }
  // }

  void fetchCategoryProducts() async {
    productList = await homeService.fetchCategoryProducts(
      context: context,
      categoryName: widget.category['title']!,
    );
    if (mounted) {
      setState(() {});
    }
  }

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  widget.category['image']!,
                  width: 80,
                ),
                const SizedBox(
                  width: 40,
                ),
                Text(widget.category['title']!),
              ],
            ),
            productList == null
                ? const Loader()
                : ListView.builder(
                    itemCount: productList!.length,
                    itemBuilder: (context, index) {
                      return ProduceItem(index: index);
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
