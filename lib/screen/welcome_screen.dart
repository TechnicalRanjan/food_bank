import 'package:flutter/material.dart';
import 'package:food_bank/screen/product_screen.dart';
import 'package:food_bank/screen/product_screen_list_view.dart';
import 'package:food_bank/widgets/button.dart';
import 'package:food_bank/widgets/product_list_view.dart';
import 'package:food_bank/widgets/promotion_banner.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void _onLoginButtonClick() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const ProductScreen(),
      ),
    );
  }

  void _onSignupButtonClick() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const ProductListViewScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 100,
                height: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Food Bank',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Special & Delicious Food',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.normal,
                  fontSize: 10,
                  color: Colors.grey,
                  letterSpacing: 2,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 100),
                child: Column(
                  children: [
                    ButtonWidget(
                      buttonTitle: 'Log In',
                      bgColor: Colors.red,
                      buttonStyle: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      width: 200,
                      height: 50,
                      onButtonClick: _onLoginButtonClick,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ButtonWidget(
                      buttonTitle: 'Sign Up',
                      bgColor: Colors.white,
                      buttonStyle: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontSize: 20,
                      ),
                      width: 200,
                      height: 50,
                      onButtonClick: _onSignupButtonClick,
                    ),
                  ],
                ),
              ),
              const PromotionBanner(), //PromotionBanner
            ],
          ),
        ),
      ),
    );
  }
}
