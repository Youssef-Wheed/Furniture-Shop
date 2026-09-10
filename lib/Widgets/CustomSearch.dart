import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customsearch extends StatelessWidget {
  const Customsearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 52,
        width: 362,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey, width: 1.4),
        ),
        child: Row(
          children: [
            SizedBox(width: 15),
            Image.asset(
              'assets/HomePage/icon_search.png',
              width: 17,
              height: 17,
            ),
            SizedBox(width: 10),
            Text(
              'Search for furniture',
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff828282BD),
                ),
              ),
            ),
            SizedBox(width: 100),
            Image.asset('assets/HomePage/Line 1.png', height: 28),
            SizedBox(width: 10),
            Image.asset('assets/HomePage/geune.png', height: 28),
          ],
        ),
      ),
    );
  }
}
