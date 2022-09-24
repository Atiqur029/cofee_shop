import 'package:cofee_shop/GETX/fav_controlar.dart';
import 'package:cofee_shop/GETX/productsDetails/productsdetails.dart';
import 'package:get/get.dart';

import '../controlar/catagoricontrolar.dart';

class ComBiningcontrolar extends Bindings {
  @override
  void dependencies() {
    Get.put(FavoriteControlar());
    Get.put(ProductDetailscartCount());
    Get.put(CatagoriControlar());
  }
}
