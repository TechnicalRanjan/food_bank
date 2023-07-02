import 'package:flutter/material.dart';
import 'package:food_bank/data/productData.dart';
import 'package:food_bank/widgets/product_grid_view.dart';

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
  });

  // final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          ProductGridView(productData: productData),
          ProductGridView(productData: productData),
        ],
      ),
    );
  }
}
