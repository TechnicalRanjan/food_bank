import 'package:flutter/material.dart';
import 'package:food_bank/screen/welcome_screen.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromRGBO(18, 19, 31, 1.000),
);

class FoodTheme extends StatelessWidget {
  const FoodTheme({super.key});

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kColorScheme,
          scaffoldBackgroundColor: const Color.fromRGBO(18, 19, 31, 1.000),
        ),
        home: const WelcomeScreen(),
      ),
    );
  }
}
