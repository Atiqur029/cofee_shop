import 'package:cofee_shop/GETX/fav_controlar.dart';
import 'package:cofee_shop/model/productmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'cartcounter.dart';

// ignore: must_be_immutable
class CounterwithTabItem extends StatelessWidget {
  final ProductModel productModel;
  CounterwithTabItem({
    Key? key,
    required this.productModel,
  }) : super(key: key);

  FavoriteControlar favoriteControlar = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(
          model: productModel,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            height: 32,
            width: 40,
            decoration:
                const BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
            child: IconButton(
                onPressed: () {
                  favoriteControlar.addtofavorite(productModel);
                },
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                )),
          ),
        ),
      ],
    );
  }
}
