import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import '../../../../models/product.dart';
import '../../../../constants/global_variables.dart';

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
  int quantity = 1;

  void increaseQuantity() {
    quantity += 1;
    if (mounted) {
      setState(() {});
    }
  }

  void decreaseQuantity() {
    quantity -= 1;
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
                  // Expanded(
                  //   child: ListView.builder(
                  //     shrinkWrap: true,
                  //     itemCount: widget.product.traits.length,
                  //     itemBuilder: (context, index) {
                  //       return Chip(
                  //         label: Text(widget.product.traits[index]),
                  //         backgroundColor: GlobalVariables
                  //             .productTraitColors[widget.product.traits[index]],
                  //         shape: StadiumBorder(
                  //           side: BorderSide(color: Colors.transparent),
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // ),
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
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipOval(
                  child: Material(
                    color: GlobalVariables.darkGreen, // Button color
                    child: InkWell(
                      splashColor: GlobalVariables.lightGreen, // Splash color
                      onTap: decreaseQuantity,
                      child: const SizedBox(
                        width: 44,
                        height: 44,
                        child: Icon(
                          Icons.remove,
                          size: 32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 60,
                    height: 60,
                    alignment: Alignment.center,
                    child: Text(
                      quantity.toString(),
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                ClipOval(
                  child: Material(
                    color: GlobalVariables.darkGreen, // Button color
                    child: InkWell(
                      splashColor: GlobalVariables.lightGreen, // Splash color
                      onTap: increaseQuantity,
                      child: const SizedBox(
                        width: 44,
                        height: 44,
                        child: Icon(
                          Icons.add,
                          size: 32,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.product.priceUnit,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                  width: 280,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: GlobalVariables.darkGreen,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Add to Cart',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 23,
                          ),
                        ),
                        Text(
                          '\$${widget.product.price * quantity}',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 23,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: badges.Badge(
        badgeStyle: const badges.BadgeStyle(
          elevation: 0,
          badgeColor: GlobalVariables.lightGreen,
        ),
        badgeContent: Text(
          '2',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        child: FloatingActionButton(
          onPressed: () {
            print('pressed');
          },
          backgroundColor: GlobalVariables.cartButtonColor,
          // child: const badges.Badge(
          // badgeStyle: const badges.BadgeStyle(
          //   elevation: 0,
          //   badgeColor: Colors.blue,
          // ),
          // badgeContent: Text('2'),
          child: Icon(
            Icons.shopping_cart,
            color: Colors.black,
            size: 32,
          ),
          // ),
        ),
      ),
    );
  }
}
