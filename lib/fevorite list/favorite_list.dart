import 'package:cofee_shop/GETX/fav_controlar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'background_Fevorite_list/fevoritelist_background.dart';

class Favoritelist extends StatelessWidget {
  Favoritelist({super.key});

  FavoriteControlar favoriteControlar = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fevorite List",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        centerTitle: true,
        leading: IconButton(
            onPressed: (() {
              Get.back();
            }),
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: FevoriteListbacground(
        child: ListView.builder(
            itemCount: favoriteControlar.productlist.length,
            itemBuilder: ((context, index) {
              var curentfevorite = favoriteControlar.productlist[index];
              return Card(
                color: Color(int.parse(curentfevorite.color)),
                elevation: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      curentfevorite.image,
                      height: 100,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          curentfevorite.name,
                          style: const TextStyle(
                              color: Colors.yellow,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            curentfevorite.price.toString(),
                            style: const TextStyle(
                                color: Color.fromARGB(255, 65, 184, 19),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            })),
      ),
    );
  }
}
