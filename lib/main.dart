import 'package:cofee_shop/GETX/fav_controlar.dart';

import 'package:cofee_shop/page/product.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'GETX/productsDetails/productsdetails.dart';
import 'controlar/catagoricontrolar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  FavoriteControlar favoriteControlar = Get.put(FavoriteControlar());

  CatagoriControlar catagoriControlar = Get.put(CatagoriControlar());
  ProductDetailscartCount productDetailscartCount =
      Get.put(ProductDetailscartCount());
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        //initialBinding: ComBiningcontrolar(),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Product());
  }
}
