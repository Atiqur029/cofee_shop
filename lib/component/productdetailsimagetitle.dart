import 'package:cofee_shop/model/productmodel.dart';

import 'package:flutter/material.dart';

class Productdetailsimagetitle extends StatelessWidget {
  const Productdetailsimagetitle({
    Key? key,
    required this.productModel,
  }) : super(key: key);

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(productModel.name,
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text: "Price\n",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                  text: productModel.price.toString(),
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ])),
              Expanded(
                child: Hero(
                  tag: productModel.id,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 80, right: 20),
                    child: Image.asset(
                      productModel.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
