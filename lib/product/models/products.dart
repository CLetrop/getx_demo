import 'package:meta/meta.dart';

class Product {
  final int id;
  final String name, description;
  final double price, rite;
  bool isFavorite = false;

  Product({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.price,
    @required this.rite,
  });

  static Product fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['Product ID'],
      name: json['Name'],
      description: json['Description'],
      price: json['Price'].toDouble(),
      rite: json['Rating Avg'].toDouble(),
    );
  }
}
