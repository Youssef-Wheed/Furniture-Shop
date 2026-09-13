import 'package:flutter/material.dart';
import 'package:furniture_shop_app/Pages/onboarding.dart';
import 'package:provider/provider.dart';
import 'package:furniture_shop_app/Provider/cart_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ShopProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture Shop',
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xff416954),
      ),
      home: const Onboarding(),
    );
  }
}
