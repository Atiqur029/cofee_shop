// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cofee_shop/model/productmodel.dart';

class CartModelList {
  final ProductModel product;
  final int qty;
  CartModelList({
    required this.product,
    required this.qty,
  });

  CartModelList copyWith({
    ProductModel? product,
    int? qty,
  }) {
    return CartModelList(
      product: product ?? this.product,
      qty: qty ?? this.qty,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'product': product.toMap(),
      'qty': qty,
    };
  }

  factory CartModelList.fromMap(Map<String, dynamic> map) {
    return CartModelList(
      product: ProductModel.fromMap(map['product'] as Map<String, dynamic>),
      qty: map['qty'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartModelList.fromJson(String source) =>
      CartModelList.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CartModelList(product: $product, qty: $qty)';

  @override
  bool operator ==(covariant CartModelList other) {
    if (identical(this, other)) return true;

    return other.product == product && other.qty == qty;
  }

  @override
  int get hashCode => product.hashCode ^ qty.hashCode;
}
