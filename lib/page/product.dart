import 'package:cofee_shop/GETX/productcontrolar.dart';
import 'package:cofee_shop/page/cartItemdetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component/cartitem.dart';
import '../component/catagoris.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  ProductControlar produtControlar = Get.put(ProductControlar());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        //appBar: AppBar(title: const Text("Product",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),centerTitle: true,),

        body: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text("Product",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
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
