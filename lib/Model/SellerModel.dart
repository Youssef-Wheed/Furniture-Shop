class Seller {
  final String image;
  final String rate;
  final String title;
  final String subtitle;
  final String price;

  Seller({
    required this.image,
    required this.rate,
    required this.title,
    required this.subtitle,
    required this.price,
  });
}

List<Seller> seller = [
  Seller(
    image: 'assets/HomePage/yellowChair.png',
    rate: '4.7',
    title: 'yellow Chair',
    subtitle: 'Armchair',
    price: '₹ 7,300',
  ),
  Seller(
    image: 'assets/HomePage/brownChair.png',
    rate: '4.6',
    title: 'brown Chair',
    subtitle: 'Armchair',
    price: '₹ 10,500',
  ),
  Seller(
    image: 'assets/HomePage/modern_chair.png',
    rate: '4.8',
    title: 'Modern Chair',
    subtitle: 'Armchair',
    price: '₹ 12,500',
  ),
  Seller(
    image: 'assets/HomePage/MinimalistChair.png',
    rate: '4.0',
    title: 'Minimalist Chair',
    subtitle: 'Armchair',
    price: '₹ 8,300',
  ),
];
