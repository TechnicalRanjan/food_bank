import 'package:flutter/material.dart';
import 'package:food_bank/screen/product_screen_list_view.dart';
import 'package:food_bank/widgets/appbar_with_background_image.dart';
import 'package:food_bank/widgets/product_list.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWithBackgroundImage(
        title1: "Diffrent",
        title2: "Kind of Food",
        backgroundImage: AssetImage("assets/images/banner-2-1.jpg"),
      ),
      body: ProductList(),
    );
  }
}
