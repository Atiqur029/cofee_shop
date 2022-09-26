import 'package:cofee_shop/GETX/productcontrolar.dart';

import 'package:cofee_shop/page/cart_List/cartlist.dart';
import 'package:cofee_shop/page/homepage.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../GETX/bottomnavigationcontrolar.dart';
import '../Themechange/themechange.dart';
import '../fevorite list/favorite_list.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  ProductControlar produtControlar = Get.put(ProductControlar());
  BottomNavigationbar bottomNavigationbar = Get.put(BottomNavigationbar());

  final Screen = [
    HomePage(),
    Cartlist(),
    Favoritelist(),
  ];
  //var isDark = false;
  ThemeChange contolar = Get.put(ThemeChange());
  var isdark = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [
          Switch(
              value: isdark,
              onChanged: ((value) {
                if (value == isdark) {
                  setState(() {
                    Get.changeTheme(ThemeData.dark());
                  });
                } else {
                  setState(() {
                    Get.changeTheme(ThemeData.light());
                  });
                }
                // isdark
                //     ? Get.changeTheme(ThemeData.dark())
                //     :
              }))
        ],
      ),

      //   actions: [
      //     GetBuilder(
      //       builder: (_) => Switch(
      //           value: contolar.isDark,
      //           onChanged: ((value) {
      //             contolar.changetheme(value);
      //           })),
      //     )
      //   ],
      // ),
      // appBar: AppBar(actions: [
      //   // Switch(
      //   //     value: isdark,
      //   //     onChanged: (value) {
      //   //       print("hellow $value");
      //   //     })
      // ]),
      //backgroundColor: Colors.blueAccent,
      body: Obx((() => IndexedStack(
            index: bottomNavigationbar.currenindex.value,
            children: Screen,
          ))),
      bottomNavigationBar: Container(
          decoration: BoxDecoration(color: Colors.black, boxShadow: [
            BoxShadow(blurRadius: 10, color: Colors.black.withOpacity(0.3))
          ]),
          // ignore: prefer_const_constructors
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: GNav(
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                  iconColor: Colors.white,
                  textColor: Colors.white,
                ),
                GButton(
                  icon: Icons.shopping_cart,
                  text: "Cart",
                  iconColor: Colors.white,
                  textColor: Colors.white,
                ),
                GButton(
                  icon: Icons.logout,
                  text: "Logg Out",
                  iconColor: Colors.white,
                  textColor: Colors.white,
                ),
              ],
              color: Colors.orange,
              gap: 10,
              hoverColor: Colors.white,
              iconSize: 30,
              haptic: true,
              tabBorder: Border.all(color: Colors.orange),
              rippleColor: Colors.blue,
              tabShadow: [BoxShadow(color: Colors.blue.withOpacity(0.2))],
              activeColor: Colors.black,
              duration: const Duration(milliseconds: 300),
              backgroundColor: Colors.red,
              curve: Curves.decelerate,
              tabActiveBorder: Border.all(color: Colors.amber, width: 3),
              onTabChange: ((index) {
                bottomNavigationbar.changeindex(index);
              }),
            ),
          )),
    ));
  }
}
