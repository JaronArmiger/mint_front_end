import 'package:flutter/material.dart';

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
    return Scaffold(body: Text(widget.product.name));
  }
}
