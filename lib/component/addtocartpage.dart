import 'package:cofee_shop/model/productmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../GETX/productsDetails/productsdetails.dart';

class AddtoCartPage extends StatelessWidget {
  AddtoCartPage({
    Key? key,
    required this.productModel,
  }) : super(key: key);

  final ProductModel productModel;
  ProductDetailscartCount cartcontrolar = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                // color: Color(int.parse(productModel.color)),
                borderRadius: BorderRadius.circular(20),
                border:
                    Border.all(color: Color(int.parse(productModel.color)))),
            child: IconButton(
                onPressed: (() {
                  cartcontrolar.addItemtocart(productModel);
                }),
                icon: const Icon(Icons.add_shopping_cart_outlined)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            height: 50,
            width: 300,
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(20),
            //   color: Color(int.parse(productModel.color),

            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                  backgroundColor: MaterialStateProperty.all(
                      Color(int.parse(productModel.color)))),
              onPressed: (() {}),
              child: Text(
                "Buy Now".toUpperCase(),
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
