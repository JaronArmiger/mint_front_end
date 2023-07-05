import 'package:flutter/material.dart';
import 'package:mint_front_end/constants/global_variables.dart';

import '../screens/produce_category_screen.dart';

class QuickShop extends StatelessWidget {
  const QuickShop({super.key});

  void navigateToCategoryPage(BuildContext context, String category) {
    Navigator.pushNamed(context, ProduceCategoryScreen.routeName,
        arguments: category);
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
                onTap: () => navigateToCategoryPage(context,
                    GlobalVariables.produceCategories[index]['title']!),
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
