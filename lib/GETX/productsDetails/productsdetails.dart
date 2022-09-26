import 'package:cofee_shop/cart_model/cart_list_model.dart';
import 'package:get/get.dart';

import '../../model/productmodel.dart';

class ProductDetailscartCount extends GetxController {
  var numberofItem = 1.obs;
  var numberqty = 0.obs;
  final totalamount = 0.obs;

  var cartitemlist = <CartModelList>[].obs;

  void increasecart() {
    numberofItem.value++;
  }

  void decresscart() {
    if (numberofItem.value > 1) {
      numberofItem.value--;
    }
  }

  addItemtocart(ProductModel product) {
    final index =
        cartitemlist.indexWhere((element) => element.product == product);

    if (index >= 0) {
      cartitemlist[index] = CartModelList(
          product: product,
          qty: (numberofItem.value + cartitemlist[index].qty));
    } else {
      cartitemlist
          .add(CartModelList(product: product, qty: numberofItem.value));
    }

    numberqty.value = numberqty.value + numberofItem.value;

    numberofItem.value = 1;
    totalamount.value =
        totalamount.value + (((product.price) * numberofItem.value));
  }

  void initialize() {
    numberofItem.value = 1;
  }
}
