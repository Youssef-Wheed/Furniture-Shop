import 'package:flutter/material.dart';
import '../Widgets/CustomText.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Customtext(
          text: 'Favourite Page',
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Color(0xff416954),
        ),
      ),
    );
  }
}
