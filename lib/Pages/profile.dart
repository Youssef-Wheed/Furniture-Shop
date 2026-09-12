import 'package:flutter/material.dart';
import '../Widgets/CustomText.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Customtext(
          text: 'Profile Page',
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Color(0xff416954),
        ),
      ),
    );
  }
}
