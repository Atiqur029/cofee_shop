import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../GETX/productsDetails/productsdetails.dart';
import '../../Methode/build_appbar.dart';
import 'component/cartlist_background.dart';

class Cartlist extends StatelessWidget {
  Cartlist({super.key});

  ProductDetailscartCount cartcontrolar = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(context),
      body: Cartlistbackground(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: cartcontrolar.cartitemlist.length,
                    itemBuilder: ((context, index) {
                      var currentitem = cartcontrolar.cartitemlist[index];
                      return Card(
                        clipBehavior: Clip.none,
                        color: Color(int.parse(currentitem.product.color)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              currentitem.product.image,
                              width: 150,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Quantity:${currentitem.qty}",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Price ${currentitem.product.price}",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    })),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Container(
                      height: 100,
                      width: 150,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 33, 215),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Text(
                          "\n Total quantity \n ${cartcontrolar.numberqty.value.toString()}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis,
                          ),
                          //maxLines: 2,
                        ),
                      ),
                    )),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 7, 176, 255)),
                    child: Center(
                      child: Text(
                        "\n Total Amount \n ${cartcontrolar.totalamount.value.toString()}",
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis),
                        //maxLines: 2,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
