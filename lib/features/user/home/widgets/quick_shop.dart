import 'package:flutter/material.dart';
import 'package:mint_front_end/constants/global_variables.dart';

import '../../../../models/category.dart';
import '../screens/produce_category_screen.dart';
import '../services/home_service.dart';

class QuickShop extends StatefulWidget {
  const QuickShop({super.key});

  @override
  State<QuickShop> createState() => _QuickShopState();
}

class _QuickShopState extends State<QuickShop> {
  final HomeService homeService = HomeService();
  List<Category>? categories;

  @override
  void initState() {
    super.initState();
    // fetchAllCategories();
  }

  void navigateToCategoryPage(
    BuildContext context,
    Map<String, String> category,
  ) {
    print(category);
    Navigator.pushNamed(
      context,
      ProduceCategoryScreen.routeName,
      arguments: category,
    );
  }

  void fetchAllCategories() async {
    categories = await homeService.fetchAllCategories(
      context: context,
    );
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 18.0),
          child: Text(
            'Shop for...',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 160,
          child: ListView.builder(
            itemCount: GlobalVariables.produceCategories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => navigateToCategoryPage(
                  context,
                  GlobalVariables.produceCategories[index],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          GlobalVariables.produceCategories[index]['image']!,
                          fit: BoxFit.cover,
                          height: 90,
                          width: 90,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      GlobalVariables.produceCategories[index]['title']!,
                      style: const TextStyle(
                        letterSpacing: -1,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
