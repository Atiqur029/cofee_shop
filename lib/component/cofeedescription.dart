import 'package:cofee_shop/model/productmodel.dart';

import 'package:flutter/material.dart';

class CofeeDescription extends StatelessWidget {
  const CofeeDescription({
    Key? key,
    required this.productModel,
  }) : super(key: key);

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 20),
      child: Text(
        productModel.description,
        style: const TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
