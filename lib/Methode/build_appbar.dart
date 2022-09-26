import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar buildAppbar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.black,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: (() => Get.back()),
    ),
    title: const Text("Item List"),
  );
}
