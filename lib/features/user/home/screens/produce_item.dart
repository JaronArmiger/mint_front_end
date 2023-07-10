import 'package:flutter/material.dart';
import 'package:mint_front_end/features/user/product_details/screens/product_details_screen.dart';

import '../../../../constants/global_variables.dart';
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
  void navigateToDetailsScreen() {
    Navigator.pushNamed(
      context,
      ProductDetailsScreen.routeName,
      arguments: widget.product,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigateToDetailsScreen,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 235,
                  // padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    widget.product.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    maxLines: 2,
                  ),
                ),
                SizedBox(
                  width: 235,
                  // padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    '${widget.product.farm.location.city}, ${widget.product.farm.location.state}',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 2,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
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
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  widget.product.farm.name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                ),

                // Container(
                //   margin: EdgeInsets.all(30),
                //   width: 100,
                //   height: 30,
                //   child: ClipRRect(
                //     borderRadius: const BorderRadius.only(
                //         bottomLeft: Radius.circular(20),
                //         bottomRight: Radius.circular(20),
                //         topLeft: Radius.circular(20),
                //         topRight: Radius.circular(20)),
                //     child: Container(
                //       color: Colors.blue,
                //       child: Text('hello'),
                //     ),
                //   ),
                // ),
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
      ),
    );
  }
}
