import 'package:flutter/material.dart';
import 'package:furniture_shop_app/Model/Product.dart';
import 'package:furniture_shop_app/Pages/product_details.dart';
import 'package:furniture_shop_app/Provider/cart_provider.dart';
import 'package:provider/provider.dart';
import 'CustomText.dart';

class Customseller extends StatelessWidget {
  const Customseller({
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
      child: Container(
        width: 280,
        margin: const EdgeInsets.symmetric(vertical: 4),
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          color: Colors.white,
          child: Row(
            children: [
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
                        child: Hero(
                          tag: product.id,
                          child: Image.asset(
                            product.image,
                            width: 70,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        left: 2,
                        child: GestureDetector(
                          onTap: () => shopProvider.toggleFavourite(product),
                          child: Icon(
                            isFav ? Icons.favorite : Icons.favorite_border,
                            color: isFav ? Colors.red : Colors.grey,
                            size: 18,
                          ),
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Customtext(
                        text: product.title,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 2),
                      Customtext(
                        text: product.subtitle,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff828282),
                        maxLines: 1,
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Customtext(
                            text: product.price,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: GestureDetector(
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
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xff416954),
                                ),
                                child: const Icon(Icons.add, color: Colors.white, size: 20),
                              ),
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
      ),
    );
  }
}
