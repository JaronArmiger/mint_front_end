import 'package:flutter/material.dart';

class ProduceItem extends StatefulWidget {
  final int index;
  const ProduceItem({
    super.key,
    required this.index,
  });

  @override
  State<ProduceItem> createState() => _ProduceItemState();
}

class _ProduceItemState extends State<ProduceItem> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.index.toString());
  }
}
