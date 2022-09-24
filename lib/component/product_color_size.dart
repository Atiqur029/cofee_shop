import 'package:flutter/material.dart';

import '../model/productmodel.dart';

class ProductColorSize extends StatelessWidget {
  const ProductColorSize({
    Key? key,
    required this.productModel,
  }) : super(key: key);

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.only(top: 100),
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: "Size\n",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
        TextSpan(
            text: "${productModel.size} CM",
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
      ])),
    ));
  }
}
