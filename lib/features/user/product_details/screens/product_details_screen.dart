import 'package:flutter/material.dart';

import '../../../../constants/global_variables.dart';
import '../../../../models/product.dart';

class ProductDetailsScreen extends StatefulWidget {
  static const String routeName = '/product-details';

  final Product product;
  const ProductDetailsScreen({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              widget.product.images[0],
              fit: BoxFit.contain,
            ),
            // const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 6.0,
              ),
              child: Text(
                widget.product.name,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 6.0,
              ),
              child: Text(
                widget.product.description,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 6.0,
              ),
              child: Row(
                children: [
                  if (widget.product.traits[0] != '')
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: GlobalVariables
                            .productTraitColors[widget.product.traits[0]],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4.0,
                        ),
                        child: Text(
                          widget.product.traits[0],
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(width: 10),
                  if (widget.product.traits[1] != '')
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: GlobalVariables
                            .productTraitColors[widget.product.traits[1]],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4.0,
                        ),
                        child: Text(
                          widget.product.traits[1],
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  const SizedBox(width: 10),
                  if (widget.product.traits[2] != '')
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: GlobalVariables
                            .productTraitColors[widget.product.traits[2]],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4.0,
                        ),
                        child: Text(
                          widget.product.traits[2],
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 6.0,
              ),
              child: Text(
                widget.product.farm.name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
