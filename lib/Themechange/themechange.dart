import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeChange extends GetxController {
  var isDark = false;

  void changetheme(state) {
    if (state == true) {
      Get.changeTheme(ThemeData.dark());
    } else {
      Get.changeTheme(ThemeData.light());
    }
  }
}
