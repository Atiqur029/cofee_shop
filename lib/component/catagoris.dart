import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controlar/catagoricontrolar.dart';

// ignore: must_be_immutable
class Catagoris extends StatelessWidget {
  CatagoriControlar catagoriControlar = Get.put(CatagoriControlar());
  Catagoris({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Center(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: catagoriControlar.item.length,
            itemBuilder: ((context, index) {
              return buildcatagori(index);
            })),
      ),
    );
  }

  Widget buildcatagori(int index) {
    return InkWell(
      onTap: (() {
        catagoriControlar.changeIndex(index);
      }),
      child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Obx(
            (() => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Text(
                          catagoriControlar.item[index],
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color:
                                  catagoriControlar.currentstate.value == index
                                      ? Colors.amberAccent
                                      : Colors.blueAccent),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      height: 2,
                      width: 40,
                      color: catagoriControlar.currentstate.value == index
                          ? Colors.white
                          : Colors.transparent,
                    )
                  ],
                )),
          )),
    );
  }
}
