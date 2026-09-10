import 'package:flutter/material.dart';
import 'package:furniture_shop_app/Widgets/CustomText.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/CustomSearch.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Customtext(text: 'Discover The Best\nFurniture.'),
              Spacer(),
              Image.asset('assets/HomePage/profile.png', width: 54, height: 54),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          //search
          Customsearch(),
        ],
      ),
    );
  }
}
