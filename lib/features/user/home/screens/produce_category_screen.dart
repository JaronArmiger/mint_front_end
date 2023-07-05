import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
