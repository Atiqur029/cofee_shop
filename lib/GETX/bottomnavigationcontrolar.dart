import 'package:get/get.dart';

class BottomNavigationbar extends GetxController {
  var currenindex = 0.obs;

  void changeindex(int index) {
    currenindex.value = index;
  }
}
