import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarWithBackgroundImage extends StatelessWidget
    implements PreferredSizeWidget {
  final String title1;
  final String title2;
  final ImageProvider backgroundImage;
  final double height;

  const AppBarWithBackgroundImage({
    Key? key,
    required this.title1,
    required this.title2,
    required this.backgroundImage,
    this.height = 200,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(40),
        bottomRight: Radius.circular(40),
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: backgroundImage,
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              iconTheme: const IconThemeData(
                color: Colors.white,
              ),
              elevation: 0,
              title: Container(),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 55),
                child: Text(
                  title1,
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 16),
                child: Text(
                  title2,
                  style: GoogleFonts.montserrat(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
