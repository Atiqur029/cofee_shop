// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductModel {
  int id;
  final String name;
  final String description;
  final int price;
  final String color;
  final String size;
  final String image;
  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.color,
    required this.size,
    required this.image,
  });

  ProductModel copyWith({
    int? id,
    String? name,
    String? description,
    int? price,
    String? color,
    String? size,
    String? image,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      color: color ?? this.color,
      size: size ?? this.size,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'color': color,
      'size': size,
      'image': image,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] as int,
      name: map['name'] as String,
      description: map['description'] as String,
      price: map['price'] as int,
      color: map['color'] as String,
      size: map['size'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, description: $description, price: $price, color: $color, size: $size, image: $image)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.description == description &&
        other.price == price &&
        other.color == color &&
        other.size == size &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        price.hashCode ^
        color.hashCode ^
        size.hashCode ^
        image.hashCode;
  }
}
