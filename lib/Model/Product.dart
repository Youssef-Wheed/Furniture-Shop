class Product {
  final String id;
  final String image;
  final String rate;
  final String title;
  final String subtitle;
  final String price;
  final String description;

  Product({
    required this.id,
    required this.image,
    required this.rate,
    required this.title,
    required this.subtitle,
    required this.price,
    this.description = "This premium furniture piece is crafted with the finest materials to ensure both comfort and durability. Its elegant design seamlessly blends with any modern interior, making it a perfect addition to your home or office space.",
  });

  double get priceValue {
    // Helper to get numeric price from "₹ 12,500"
    return double.tryParse(price.replaceAll('₹ ', '').replaceAll(',', '')) ?? 0.0;
  }
}
