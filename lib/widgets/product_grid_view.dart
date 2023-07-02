import 'package:flutter/material.dart';
import 'package:food_bank/widgets/product_grid_item.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/product.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key, required this.productData});

  final List<Product> productData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              children: [
                Text(
                  "Food Category",
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 17,
                ),
                Text(
                  "________________",
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 172 / 296,
              ),
              children: [
                for (final product in productData)
                  ProductGridItem(product: product)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
