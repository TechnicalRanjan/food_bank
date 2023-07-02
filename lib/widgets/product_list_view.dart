import 'package:flutter/material.dart';
import 'package:food_bank/models/product.dart';
import 'package:food_bank/widgets/product_list_item.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key, required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemCount: products.length,
          itemBuilder: (ctx, index) => ProductListItem(
            product: products[index],
          ),
          separatorBuilder: (context, index) => const Divider(
            height: 1.0,
            thickness: 1.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
