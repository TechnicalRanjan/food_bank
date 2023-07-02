import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Product {
  Product({
    required this.title,
    required this.price,
    required this.category,
    required this.imageUrl,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double price;
  final String category;
  final String imageUrl;
}
