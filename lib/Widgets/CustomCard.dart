import 'package:flutter/material.dart';
import 'package:furniture_shop_app/Model/Product.dart';
import 'package:furniture_shop_app/Pages/product_details.dart';
import 'package:furniture_shop_app/Provider/cart_provider.dart';
import 'package:provider/provider.dart';
import 'CustomText.dart';

class Customcard extends StatelessWidget {
  const Customcard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    final shopProvider = Provider.of<ShopProvider>(context);
    final isFav = shopProvider.isFavourite(product.id);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsPage(product: product),
          ),
        );
      },
      child: SizedBox(
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
                        child: Hero(
                          tag: product.id,
                          child: Image.asset(
                            product.image,
                            width: 130,
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) => const Icon(Icons.chair, size: 50),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 5,
                        child: GestureDetector(
                          onTap: () => shopProvider.toggleFavourite(product),
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white70,
                            ),
                            child: Icon(
                              isFav ? Icons.favorite : Icons.favorite_border,
                              color: isFav ? Colors.red : Colors.grey,
                              size: 20,
                            ),
                          ),
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
                                text: product.rate,
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
                  text: product.title,
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
                  text: product.subtitle,
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
                      text: product.price,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        shopProvider.addToCart(product);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Customtext(
                              text: 'Added to cart',
                              color: Colors.white,
                              fontSize: 14,
                            ),
                            backgroundColor: const Color(0xff416954),
                            behavior: SnackBarBehavior.floating,
                            duration: const Duration(milliseconds: 1500),
                          ),
                        );
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff416954),
                        ),
                        child: const Icon(Icons.add, color: Colors.white, size: 30),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
