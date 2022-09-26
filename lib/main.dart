import 'package:cofee_shop/GETX/fav_controlar.dart';
import 'package:cofee_shop/page/homepage.dart';

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
    // int thememode = 0;
    return GetMaterialApp(

        //initialBinding: ComBiningcontrolar(),
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
          brightness: Brightness.dark,
        ),
        darkTheme: ThemeData.dark()
            .copyWith(primaryColor: Colors.black45, cardColor: Colors.black87),
        //themeMode: thememode == 1 ? ThemeMode.dark : ThemeMode.light,
        home: const Product());
  }
}
