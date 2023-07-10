import 'package:flutter/material.dart';

import '../../../../models/product.dart';

class ProduceItem extends StatefulWidget {
  final Product product;
  const ProduceItem({
    super.key,
    required this.product,
  });

  @override
  State<ProduceItem> createState() => _ProduceItemState();
}

class _ProduceItemState extends State<ProduceItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                width: 235,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  widget.product.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  maxLines: 2,
                ),
              ),
              Container(
                width: 235,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  widget.product.name,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  maxLines: 2,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Image.network(
                widget.product.images[0],
                fit: BoxFit.contain,
                height: 135,
                width: 135,
              ),
              Text(
                '\$${widget.product.price.toString()}/${widget.product.priceUnit}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                maxLines: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
