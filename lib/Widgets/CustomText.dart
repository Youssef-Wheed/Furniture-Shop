import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customtext extends StatelessWidget {
  const Customtext({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
    this.color = Colors.black,
    this.maxLines,
    this.overflow,
  });

  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final int? maxLines;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow ?? TextOverflow.ellipsis,
      style: GoogleFonts.inter(
        textStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
    );
  }
}
