import 'package:cofee_shop/model/productmodel.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoriteControlar extends GetxController {
  var numberofitem = 0.obs;
  var isColors = false.obs;

  var productlist = <ProductModel>[];

  void addtofavorite(ProductModel model) {
    if (!productlist.contains(model)) {
      productlist.add(model);
      numberofitem++;
    } else {
      Get.snackbar("Liked There", "You Already Liked Product",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Color(int.parse(model.color)),
          borderRadius: 2,
          colorText: Colors.black,
          barBlur: 0,
          titleText: const Text("Liked"),
          borderWidth: 2);
    }
  }
}
