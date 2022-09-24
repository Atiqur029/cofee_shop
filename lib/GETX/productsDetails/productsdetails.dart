import 'package:get/get.dart';

import '../../model/productmodel.dart';

class ProductDetailscartCount extends GetxController {
  var numberofItem = 1.obs;
  var numberqty = 0.obs;

  var cartitemlist = <ProductModel>[].obs;

  void increasecart() {
    numberofItem.value++;
  }

  void decresscart() {
    if (numberofItem.value > 1) {
      numberofItem.value--;
    }
  }

  addItemtocart(ProductModel product) {
    cartitemlist.add(product);
    numberqty.value = numberqty.value + numberofItem.value;
    numberofItem.value = 1;
  }

  void initialize() {
    numberofItem.value = 1;
  }
}
