import 'package:flutter/material.dart';
import 'package:furniture_shop_app/Widgets/CustomCard.dart';
import 'package:furniture_shop_app/Widgets/CustomCategories.dart';
import 'package:furniture_shop_app/Model/CardModel.dart';
import 'package:furniture_shop_app/Model/SellerModel.dart';
import 'package:furniture_shop_app/Widgets/CustomSeller.dart';
import 'package:furniture_shop_app/Widgets/CustomText.dart';
import 'package:furniture_shop_app/Widgets/CustomSearch.dart';

/// The main landing page of the Furniture Shop application.
///
/// This page displays featured categories, a horizontal list of furniture products,
/// and a best-seller section. It serves as the primary entry point for users
/// to discover and browse the catalog.
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

/// Global selection state for categories (Consider moving to a Provider if complexity grows).
int selectCountener = 0;

/// Available furniture categories for discovery.
List<String> categories = ['Chairs', 'Cupboard', 'Tables', 'Lamps'];

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              const Customtext(
                text: 'Discover The Best\nFurniture.',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff416954),
              ),
              const Spacer(),
              // User Profile Thumbnail
              Image.asset('assets/HomePage/profile.png', width: 54, height: 54),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              
              // Integrated Search Component
              const Customsearch(),
              
              const SizedBox(height: 20),
              
              // Categories Section Header
              const Customtext(
                text: 'Categories',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff416954),
              ),
              
              const SizedBox(height: 20),
              
              // Scrollable Category Chips
              const Customcategories(),

              const SizedBox(height: 20),
              
              // Featured Products Horizontal Gallery
              SizedBox(
                height: 320,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: chairsList.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    final chair = chairsList[index];
                    return Customcard(
                      product: chair,
                    );
                  },
                ),
              ),
              
              const SizedBox(height: 20),

              // Best Seller Section Header
              const Customtext(
                text: 'Best Seller',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff416954),
              ),
              
              const SizedBox(height: 20),
              
              // Best Sellers Horizontal List
              SizedBox(
                height: 140,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: seller.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 10),
                  itemBuilder: (context, index) {
                    final item = seller[index];
                    return Customseller(
                      product: item,
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
