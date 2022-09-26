import 'dart:ui';

import 'package:badges/badges.dart';
import 'package:cofee_shop/GETX/fav_controlar.dart';
import 'package:cofee_shop/model/productmodel.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../GETX/productsDetails/productsdetails.dart';
import '../component/productdetailsbody.dart';
import '../fevorite list/favorite_list.dart';
import 'cart_List/cartlist.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({super.key, required this.model});
  final ProductModel model;
  //final Cartlistbackground cartlistbackground = Cartlistbackground();

  FavoriteControlar favoriteControlar = Get.find();
  ProductDetailscartCount cartcontrolar = Get.find();

  @override
  Widget build(BuildContext context) {
    cartcontrolar.initialize();
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            actions: [
              InkWell(
                onTap: () {
                  Get.to(Favoritelist());
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Badge(
                    badgeContent: Obx((() => Text(
                          favoriteControlar.numberofitem.value.toString(),
                          style: const TextStyle(color: Colors.white),
                        ))),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.brown,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (() {
                  Get.to(Cartlist());
                }),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 20, top: 10),
                  child: Badge(
                    badgeContent: Obx(() => Text(
                          cartcontrolar.numberqty.value.toString(),
                          style: const TextStyle(color: Colors.white),
                        )),
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
            elevation: 0,
            backgroundColor: Color(int.parse(model.color)),
            leading: IconButton(
                onPressed: (() {
                  Get.back();
                }),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
          ),
          backgroundColor: Color(int.parse(model.color)),
          body: ProductdetailsBody(
            productModel: model,
          )),
    );
  }
}
