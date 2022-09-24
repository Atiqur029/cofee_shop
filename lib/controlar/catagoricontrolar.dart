import 'package:get/get.dart';

class CatagoriControlar extends GetxController {
  var currentstate = 0.obs;

  List item = ["T-Shirt", "Pant", "Jens", "dress", "Color-Shirts"];

  void changeIndex(int index) {
    currentstate.value = index;
  }
}
