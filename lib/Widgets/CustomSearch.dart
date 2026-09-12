import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customsearch extends StatelessWidget {
  const Customsearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: double.infinity, // Changed from 362 to allow adaptive width
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey, width: 1.4),
      ),
      child: Row(
        children: [
          const SizedBox(width: 15),
          Image.asset(
            'assets/HomePage/icon_search.png',
            width: 17,
            height: 17,
            errorBuilder: (context, error, stackTrace) => const Icon(Icons.search, size: 17),
          ),
          const SizedBox(width: 10),
          Expanded( // Added Expanded to text to prevent overflow
            child: Text(
              'Search for furniture',
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff828282),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Image.asset('assets/HomePage/Line 1.png', height: 28),
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Image.asset('assets/HomePage/geune.png', height: 28),
          ),
        ],
      ),
    );
  }
}
