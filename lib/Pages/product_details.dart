import 'package:flutter/material.dart';
import 'package:furniture_shop_app/Model/Product.dart';
import 'package:furniture_shop_app/Widgets/CustomText.dart';
import 'package:provider/provider.dart';
import 'package:furniture_shop_app/Provider/cart_provider.dart';

class ProductDetailsPage extends StatefulWidget {
  final Product product;
  const ProductDetailsPage({super.key, required this.product});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    final shopProvider = Provider.of<ShopProvider>(context);
    final isFav = shopProvider.isFavourite(widget.product.id);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(
              isFav ? Icons.favorite : Icons.favorite_border,
              color: isFav ? Colors.red : Colors.black,
            ),
            onPressed: () {
              shopProvider.toggleFavourite(widget.product);
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Container(
              height: 350,
              width: double.infinity,
              color: const Color(0xffF5F5F5),
              child: Hero(
                tag: widget.product.id,
                child: Image.asset(
                  widget.product.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Customtext(
                            text: widget.product.title,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                          Customtext(
                            text: widget.product.subtitle,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff828282),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: const Color(0xffFFF0BA),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.star, color: Color(0xffF4BB00), size: 18),
                            const SizedBox(width: 5),
                            Customtext(
                              text: widget.product.rate,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xffF4BB00),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Customtext(
                    text: 'Description',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff416954),
                  ),
                  const SizedBox(height: 10),
                  Customtext(
                    text: widget.product.description,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff828282),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Customtext(
                        text: widget.product.price,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                if (quantity > 1) setState(() => quantity--);
                              },
                              icon: const Icon(Icons.remove),
                            ),
                            Customtext(
                              text: quantity.toString(),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                            IconButton(
                              onPressed: () => setState(() => quantity++),
                              icon: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ElevatedButton(
          onPressed: () {
            for (int i = 0; i < quantity; i++) {
              shopProvider.addToCart(widget.product);
            }
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
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff416954),
            minimumSize: const Size(double.infinity, 56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: const Customtext(
            text: 'Add to Cart',
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
