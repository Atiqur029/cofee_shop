import 'package:get/get.dart';

class CatagoriControlar extends GetxController {
  var currentstate = 0.obs;

  List item = [
    "Cofee",
    "hot cofee",
    "Cold cofee",
    "brown cofee",
    "white coffee"
  ];

  void changeIndex(int index) {
    currentstate.value = index;
  }
}
