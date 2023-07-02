import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PromotionBanner extends StatelessWidget {
  const PromotionBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 175,
      width: 300,
      color: Colors.transparent,
      margin: const EdgeInsets.all(30),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.red[600],
          // image: const DecorationImage(
          //   image: AssetImage("assets/images/banner-1.jpg"),
          //   alignment: Alignment.topRight,
          // ),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "15%",
                  style: GoogleFonts.montserrat(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Discount",
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "From Our Store",
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 80,
            ),
            ClipOval(
              // clipper: CustomClipPath(),
              child: Image.asset(
                "assets/images/banner-1.jpg",
                alignment: Alignment.topRight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
