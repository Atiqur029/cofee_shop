import 'package:cofee_shop/GETX/productsDetails/productsdetails.dart';
import 'package:cofee_shop/model/productmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartCounter extends StatelessWidget {
  CartCounter({super.key, required this.model});
  final ProductModel model;

  ProductDetailscartCount productDetailscartCount = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlineButton(
            icon: Icons.remove,
            onpressed: () {
              productDetailscartCount.decresscart();
            }),
        const SizedBox(
          width: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.3),
          child: Obx(
            (() => Text(
                  productDetailscartCount.numberofItem
                      .toString()
                      .padLeft(2, "0"),
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black),
                )),
          ),
        ),
        OutlineButton(
            icon: Icons.add,
            onpressed: () {
              productDetailscartCount.increasecart();
            }),
      ],
    );
  }

  Widget OutlineButton({required IconData icon, required Function onpressed}) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10),
      child: SizedBox(
          width: 40,
          height: 30,
          child: OutlinedButton(
            onPressed: (() {
              onpressed();
            }),
            style: OutlinedButton.styleFrom(
                padding: EdgeInsets.zero,
                backgroundColor: Color(int.parse(model.color)),
                elevation: 20,
                minimumSize: const Size(100, 50),
                shadowColor: Color(
                  int.parse(model.color),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            child: Icon(icon),
          )),
    );
  }
}
