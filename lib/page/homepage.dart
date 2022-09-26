import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../GETX/productcontrolar.dart';
import '../component/cartitem.dart';
import '../component/catagoris.dart';
import 'cartItemdetails.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  ProductControlar produtControlar = Get.put(ProductControlar());
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(actions: [
        //   Switch(
        //       value: isDark,
        //       onChanged: ((value) {
        //         print("heloow $value");
        //       }))
        // ]),
        //backgroundColor: Colors.blue,
        body: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Product",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Catagoris(),
            Obx(
              (() => produtControlar.isdataloading.value == true
                  ? Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 600,
                          width: double.infinity,
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.7,
                            ),
                            itemBuilder: ((context, index) {
                              var currentProduct =
                                  produtControlar.productmodel[index];
                              return NewCartItem(
                                currentProduct: currentProduct,
                                cartClickHandear: () {
                                  Get.to(ProductDetails(model: currentProduct));
                                },
                              );
                            }),
                            itemCount: produtControlar.productmodel.length,
                          ),
                        ),
                      ),
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    )),
            ),
          ],
        ),
      ),
    );
  }
}
