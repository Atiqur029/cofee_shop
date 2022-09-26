import 'package:flutter/material.dart';

import '../model/productmodel.dart';

class NewCartItem extends StatelessWidget {
  const NewCartItem(
      {Key? key, required this.currentProduct, required this.cartClickHandear})
      : super(key: key);

  final ProductModel currentProduct;
  final Function()? cartClickHandear;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (() {
        cartClickHandear!();
      }),
      child: Column(
        children: [
          Container(
            width: size.width * 0.4,
            height: size.height * 0.2,
            decoration: BoxDecoration(
                color: Color(
                  int.parse(currentProduct.color),
                ),
                borderRadius: BorderRadius.circular(20)),
            child: Hero(
                tag: currentProduct.id,
                child: Image(image: AssetImage(currentProduct.image))),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              currentProduct.name,
              style: const TextStyle(
                  color: Color.fromARGB(255, 3, 221, 40),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "৳ ${currentProduct.price.toString()}",
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 82, 255, 120)),
          )
        ],
      ),
    );
  }
}
