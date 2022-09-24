import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../model/productmodel.dart';

class ProductControlar extends GetxController {
  var productmodel = <ProductModel>[].obs;
  var isdataloading = false.obs;
  @override
  void onInit() {
    super.onInit();
    fetchdata();
  }

  void fetchdata() async {
    var productlist =
        await rootBundle.loadString("asset/coffe/json/cofeecaet.json");
    var jsondecode = await jsonDecode(productlist);

    productmodel.value =
        List.from(jsondecode).map((e) => ProductModel.fromMap(e)).toList();

    isdataloading.value = true;
  }

  void destroyed() {
    productmodel.value = [];
  }
}
