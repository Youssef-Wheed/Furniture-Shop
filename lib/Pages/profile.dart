import 'package:flutter/material.dart';
import '../Widgets/CustomText.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Customtext(
          text: 'My Profile',
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Color(0xff416954),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Profile Header
            Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      const CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/HomePage/profile.png'),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: const BoxDecoration(
                            color: Color(0xff416954),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  const Customtext(
                    text: 'Richard Dan',
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff416954),
                  ),
                  const SizedBox(height: 5),
                  const Customtext(
                    text: 'richarddan11@gmail.com',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            
            // Body Content with different background
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: const BoxDecoration(
                color: Color(0xffF9F9F9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Customtext(
                    text: 'Account',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 20),
                  _buildProfileItem(
                    icon: Icons.settings_outlined,
                    title: 'Settings',
                    iconBgColor: const Color(0xffE0E0E0),
                    iconColor: Colors.black54,
                  ),
                  _buildProfileItem(
                    icon: Icons.notifications_none_outlined,
                    title: 'Notification',
                    iconBgColor: const Color(0xffE0F7FA),
                    iconColor: Colors.cyan,
                  ),
                  _buildProfileItem(
                    icon: Icons.history,
                    title: 'Older History',
                    iconBgColor: const Color(0xffFFF3E0),
                    iconColor: Colors.orange,
                  ),
                  
                  const SizedBox(height: 25),
                  const Customtext(
                    text: 'Account',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 20),
                  _buildProfileItem(
                    icon: Icons.lock_outline,
                    title: 'Privacy & Policy',
                    iconBgColor: const Color(0xffE8EAF6),
                    iconColor: Colors.indigo,
                  ),
                  _buildProfileItem(
                    icon: Icons.assignment_outlined,
                    title: 'Terms & Conditions',
                    iconBgColor: const Color(0xffFFFDE7),
                    iconColor: Colors.yellow.shade700,
                  ),
                  _buildProfileItem(
                    icon: Icons.logout,
                    title: 'Log Out',
                    iconBgColor: const Color(0xffFFEBEE),
                    iconColor: Colors.redAccent,
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileItem({
    required IconData icon,
    required String title,
    required Color iconBgColor,
    required Color iconColor,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: iconBgColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: iconColor, size: 24),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Customtext(
                text: title,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 18),
          ],
        ),
      ),
    );
  }
}
