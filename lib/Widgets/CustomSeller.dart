import 'package:flutter/material.dart';
import 'CustomText.dart';

class Customseller extends StatelessWidget {
  const Customseller({
    super.key,
    required this.image,
    required this.rate,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  final String image;
  final String rate;
  final String title;
  final String subtitle;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280, // Fixed width for horizontal list items
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: Colors.white,
        child: Row(
          children: [
            // Image Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xffE3E3E3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        image,
                        width: 70,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      right: 5,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffFFF0BA),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.star, color: Color(0xffF4BB00), size: 12),
                            const SizedBox(width: 2),
                            Customtext(
                              text: rate,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffF4BB00),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // Text Section
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Customtext(
                      text: title,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      maxLines: 1,
                    ),
                    const SizedBox(height: 2),
                    Customtext(
                      text: subtitle,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff828282),
                      maxLines: 1,
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Customtext(
                          text: price,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xff416954),
                            ),
                            child: const Icon(Icons.add, color: Colors.white, size: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
