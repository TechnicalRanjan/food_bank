import 'package:flutter/material.dart';
import 'package:food_bank/models/product.dart';
import 'package:food_bank/widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   margin: const EdgeInsets.all(10),
    //   decoration: BoxDecoration(
    //     border: Border.all(width: 1, color: Colors.white),
    //   ),
    //   child: Column(
    //     children: [
    //       ListTile(
    //         leading: SizedBox(
    //           child: ClipRRect(
    //             borderRadius: BorderRadius.circular(8.0),
    //             child: Image.asset(
    //               product.imageUrl,
    //               fit: BoxFit.cover,
    //               width: 100,
    //               height: double.infinity,
    //             ),
    //           ),
    //         ),
    //         title: Text(
    //           product.title,
    //           style: GoogleFonts.montserrat(
    //             fontSize: 14,
    //             color: Colors.white,
    //             fontWeight: FontWeight.bold,
    //             letterSpacing: 1,
    //           ),
    //         ),
    //         subtitle: Column(
    //           children: [
    //             const SizedBox(
    //               height: 10,
    //             ),
    //             Text(
    //               'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc laoreet pharetra egestas. Maecenas sed erat mi. Morbi sodales facilisis felis, eget interdum odio fermentum eu. ',
    //               style: GoogleFonts.montserrat(
    //                 fontSize: 10,
    //                 color: Colors.white,
    //                 fontWeight: FontWeight.normal,
    //                 letterSpacing: 1,
    //               ),
    //               maxLines: 3,
    //             ),
    //             const SizedBox(
    //               height: 10,
    //             ),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               crossAxisAlignment: CrossAxisAlignment.center,
    //               children: [
    //                 Text(
    //                   '\$ ${product.price.toString()}',
    //                   style: GoogleFonts.montserrat(
    //                     fontSize: 14,
    //                     color: Colors.white,
    //                     fontWeight: FontWeight.normal,
    //                     letterSpacing: 1,
    //                   ),
    //                 ),
    //                 ButtonWidget(
    //                   buttonTitle: 'Add Cart',
    //                   buttonStyle: GoogleFonts.lato(
    //                     fontSize: 10,
    //                     color: Colors.white,
    //                     fontWeight: FontWeight.bold,
    //                   ),
    //                   onButtonClick: () {},
    //                   bgColor: Colors.red,
    //                   width: 60,
    //                   height: 22,
    //                 ),
    //               ],
    //             ),
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // );

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: Colors.transparent,
      child: Row(
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
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                    height: 10,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc laoreet pharetra egestas. Maecenas sed erat mi. Morbi sodales facilisis felis, eget interdum odio fermentum eu. ',
                    style: GoogleFonts.montserrat(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      letterSpacing: 1,
                    ),
                    maxLines: 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '\$ ${product.price.toString()}',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          letterSpacing: 1,
                        ),
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
