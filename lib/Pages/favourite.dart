import 'package:flutter/material.dart';
import 'package:furniture_shop_app/Provider/cart_provider.dart';
import 'package:furniture_shop_app/Widgets/CustomText.dart';
import 'package:provider/provider.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final shopProvider = Provider.of<ShopProvider>(context);
    final favItems = shopProvider.favouriteItems;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Customtext(
          text: 'Favourites',
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Color(0xff416954),
        ),
      ),
      body: favItems.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite_border, size: 80, color: Colors.grey[300]),
                  const SizedBox(height: 16),
                  const Customtext(
                    text: 'No favourites yet',
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: favItems.length,
              itemBuilder: (context, index) {
                final product = favItems[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: const Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Image.asset(product.image, fit: BoxFit.contain),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Customtext(
                              text: product.title,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            Customtext(
                              text: product.subtitle,
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                            const SizedBox(height: 4),
                            Customtext(
                              text: product.price,
                              fontSize: 14,
                              color: const Color(0xff416954),
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.favorite, color: Colors.red),
                        onPressed: () => shopProvider.toggleFavourite(product),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
