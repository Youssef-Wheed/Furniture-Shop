import 'package:flutter/material.dart';
import 'CustomText.dart';

class Customcard extends StatelessWidget {
  const Customcard({
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
    return SizedBox(
      width: 220,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffE3E3E3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        image,
                        width: 130,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) => const Icon(Icons.chair, size: 50),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xffFF0404),
                        ),
                        child: const Customtext(
                          text: 'NEW',
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xffFFF0BA),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.star, color: Color(0xffF4BB00), size: 14),
                            const SizedBox(width: 3),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Customtext(
                text: title,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                maxLines: 1,
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Customtext(
                text: subtitle,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xff828282),
                maxLines: 1,
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 8, bottom: 8),
              child: Row(
                children: [
                  Customtext(
                    text: price,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff416954),
                    ),
                    child: const Icon(Icons.add, color: Colors.white, size: 30),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
