import 'package:flutter/material.dart';

import 'package:furniture_shop_app/Pages/homepage.dart';
import 'package:furniture_shop_app/Widgets/CustomText.dart';

class Customcategories extends StatefulWidget {
  const Customcategories({super.key});

  @override
  State<Customcategories> createState() => _CustomcategoriesState();
}

class _CustomcategoriesState extends State<Customcategories> {
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 50,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemBuilder: (context, index) {
          bool isSelected = index == selectCountener;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectCountener = index;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 600),
              child: Container(
                width: 105,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: isSelected? Color(0xff416954) :  Color(0xffF2F2F2),
                ),
                child: Center(child: Customtext(text: categories[index], fontSize: 17, fontWeight: FontWeight.w600, color: isSelected? Color(0xffFFFFFF) :  Color(0xff416954))),
              ),
            ),
          );
        },
      ),
    );
  }
}
