import 'package:flutter/material.dart';
import 'package:furniture_shop_app/Provider/cart_provider.dart';
import 'package:furniture_shop_app/Widgets/CustomText.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final shopProvider = Provider.of<ShopProvider>(context);
    final cartItems = shopProvider.cartItems;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Customtext(
          text: 'My Cart',
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Color(0xff416954),
        ),
      ),
      body: cartItems.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_outlined, size: 80, color: Colors.grey[300]),
                  const SizedBox(height: 16),
                  const Customtext(
                    text: 'Your cart is empty',
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ],
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      final item = cartItems[index];
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
                              child: Image.asset(item.product.image, fit: BoxFit.contain),
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Customtext(
                                    text: item.product.title,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  Customtext(
                                    text: item.product.price,
                                    fontSize: 14,
                                    color: const Color(0xff416954),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      _quantityButton(Icons.remove, () => shopProvider.decreaseQuantity(item.product.id)),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                        child: Customtext(text: item.quantity.toString(), fontWeight: FontWeight.bold),
                                      ),
                                      _quantityButton(Icons.add, () => shopProvider.increaseQuantity(item.product.id)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete_outline, color: Colors.red),
                              onPressed: () => shopProvider.removeFromCart(item.product.id),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, -5)),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Customtext(text: 'Total', fontSize: 18, fontWeight: FontWeight.w600),
                          Customtext(
                            text: '₹ ${shopProvider.totalPrice.toStringAsFixed(2)}',
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff416954),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Customtext(text: 'Success', fontWeight: FontWeight.bold),
                              content: const Customtext(text: 'Order placed successfully!'),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Customtext(text: 'OK', color: Color(0xff416954)),
                                ),
                              ],
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff416954),
                          minimumSize: const Size(double.infinity, 56),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                        ),
                        child: const Customtext(text: 'Checkout', color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }

  Widget _quantityButton(IconData icon, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, size: 18),
      ),
    );
  }
}
