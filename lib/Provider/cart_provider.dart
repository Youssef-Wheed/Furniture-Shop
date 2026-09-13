import 'package:flutter/material.dart';
import '../Model/Product.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});
}

class ShopProvider extends ChangeNotifier {
  final List<CartItem> _cartItems = [];
  final List<Product> _favouriteItems = [];

  List<CartItem> get cartItems => _cartItems;
  List<Product> get favouriteItems => _favouriteItems;

  // Cart Methods
  void addToCart(Product product) {
    int index = _cartItems.indexWhere((item) => item.product.id == product.id);
    if (index != -1) {
      _cartItems[index].quantity++;
    } else {
      _cartItems.add(CartItem(product: product));
    }
    notifyListeners();
  }

  void removeFromCart(String productId) {
    _cartItems.removeWhere((item) => item.product.id == productId);
    notifyListeners();
  }

  void increaseQuantity(String productId) {
    int index = _cartItems.indexWhere((item) => item.product.id == productId);
    if (index != -1) {
      _cartItems[index].quantity++;
      notifyListeners();
    }
  }

  void decreaseQuantity(String productId) {
    int index = _cartItems.indexWhere((item) => item.product.id == productId);
    if (index != -1 && _cartItems[index].quantity > 1) {
      _cartItems[index].quantity--;
      notifyListeners();
    }
  }

  double get totalPrice {
    double total = 0.0;
    for (var item in _cartItems) {
      total += item.product.priceValue * item.quantity;
    }
    return total;
  }

  // Favourite Methods
  void toggleFavourite(Product product) {
    int index = _favouriteItems.indexWhere((item) => item.id == product.id);
    if (index != -1) {
      _favouriteItems.removeAt(index);
    } else {
      _favouriteItems.add(product);
    }
    notifyListeners();
  }

  bool isFavourite(String productId) {
    return _favouriteItems.any((item) => item.id == productId);
  }
}
