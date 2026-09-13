import 'package:flutter/material.dart';
import 'package:furniture_shop_app/Widgets/CustomCard.dart';
import 'package:furniture_shop_app/Widgets/CustomCategories.dart';
import 'package:furniture_shop_app/Model/CardModel.dart';
import 'package:furniture_shop_app/Model/SellerModel.dart';
import 'package:furniture_shop_app/Widgets/CustomSeller.dart';
import 'package:furniture_shop_app/Widgets/CustomText.dart';
import 'package:furniture_shop_app/Widgets/CustomSearch.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

int selectCountener = 0;

List<String> categories = ['Chairs', 'Cupboard', 'Tables', 'Lamps'];

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Customtext(
                text: 'Discover The Best\nFurniture.',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff416954),
              ),
              Spacer(),
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
              //search
              const Customsearch(),
              const SizedBox(height: 20),
              const Customtext(
                text: 'Categories',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff416954),
              ),
              const SizedBox(height: 20),
              //category
              const Customcategories(),

              //cards
              const SizedBox(height: 20),
              SizedBox(
                height: 320, // Reduced height because card is now more compact
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

              const Customtext(
                text: 'Best Seller',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff416954),
              ),
              const SizedBox(height: 20),
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
