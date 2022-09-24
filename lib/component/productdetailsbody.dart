import 'package:cofee_shop/component/cofeedescription.dart';
import 'package:cofee_shop/component/product_color_size.dart';
import 'package:cofee_shop/component/productcountertab.dart';
import 'package:cofee_shop/component/productdetails_color.dart';
import 'package:cofee_shop/component/productdetailsimagetitle.dart';
import 'package:cofee_shop/model/productmodel.dart';
import 'package:flutter/material.dart';

import 'addtocartpage.dart';

class ProductdetailsBody extends StatelessWidget {
  const ProductdetailsBody({
    Key? key,
    required this.productModel,
  }) : super(key: key);
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: size.height * 0.7,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.only(top: 100, left: 10),
                                  child: const Text(
                                    "Color",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ProductColorDot(
                                        color: Color(
                                      int.parse(productModel.color),
                                    )),
                                    const ProductColorDot(
                                      color: Colors.cyan,
                                    ),
                                    const ProductColorDot(
                                      color: Colors.yellow,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            ProductColorSize(productModel: productModel),
                          ],
                        ),
                        CofeeDescription(productModel: productModel),
                        CounterwithTabItem(
                          productModel: productModel,
                        ),
                        AddtoCartPage(productModel: productModel),
                      ])),
              Column(
                children: [
                  Productdetailsimagetitle(productModel: productModel),
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
