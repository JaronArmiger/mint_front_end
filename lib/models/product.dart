import "dart:convert";

import "package:mint_front_end/models/rating.dart";

import "farm.dart";

class Product {
  final String? id;
  final String name;
  final String description;
  final List<String> images;
  final double quantity;
  final double price;
  final String priceUnit;
  final String category;
  final Farm farm;
  final List<String> traits;
  final List<Rating>? ratings;

  Product({
    this.id,
    required this.name,
    required this.description,
    required this.images,
    required this.quantity,
    required this.price,
    required this.priceUnit,
    required this.category,
    required this.farm,
    required this.traits,
    this.ratings,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'images': images,
      'quantity': quantity,
      'price': price,
      'priceUnit': priceUnit,
      'category': category,
      'farm': farm,
      'traits': traits,
      'ratings': ratings,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['_id'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      images: List<String>.from(map['images']),
      quantity: map['quantity']?.toDouble() ?? 0.0,
      price: map['price']?.toDouble() ?? 0.0,
      priceUnit: map['priceUnit'] ?? '',
      category: map['category'] ?? '',
      farm: Farm.fromMap(map['farm']),
      traits: List<String>.from(map['traits']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
