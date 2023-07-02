import 'package:flutter/material.dart';
import 'package:food_bank/models/product.dart';
import 'package:food_bank/widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductGridItem extends StatelessWidget {
  const ProductGridItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            product.imageUrl,
            fit: BoxFit.cover,
            width: 100,
            height: 100,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.title,
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '\$ ${product.price.toString()}',
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        ButtonWidget(
          buttonTitle: 'Add Cart',
          buttonStyle: GoogleFonts.lato(
            fontSize: 10,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          onButtonClick: () {},
          bgColor: Colors.red,
          width: 60,
          height: 22,
        ),
      ],
    );
  }
}
