import 'package:flutter/material.dart';
import 'package:furniture_shop_app/Widgets/CustomText.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> notifications = [
      {
        'title': 'Flash Sale!',
        'subtitle': 'Get up to 50% off on all modern chairs. Limited time offer.',
        'time': '2 mins ago',
        'type': 'promo'
      },
      {
        'title': 'New Arrival',
        'subtitle': 'The Minimalist Series is now available. Check it out!',
        'time': '1 hour ago',
        'type': 'new'
      },
      {
        'title': 'Order Update',
        'subtitle': 'Your order #FS-9872 has been shipped and is on its way.',
        'time': '3 hours ago',
        'type': 'shipping'
      },
      {
        'title': 'Feedback',
        'subtitle': 'How was your recent purchase? Rate your experience.',
        'time': 'Yesterday',
        'type': 'feedback'
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Customtext(
          text: 'Notifications',
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Color(0xff416954),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final note = notifications[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey[100]!),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.02),
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xff416954).withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    _getIcon(note['type']!),
                    color: const Color(0xff416954),
                    size: 20,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Customtext(
                            text: note['title']!,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          Customtext(
                            text: note['time']!,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Customtext(
                        text: note['subtitle']!,
                        fontSize: 13,
                        color: const Color(0xff828282),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  IconData _getIcon(String type) {
    switch (type) {
      case 'promo': return Icons.local_offer_outlined;
      case 'new': return Icons.fiber_new_outlined;
      case 'shipping': return Icons.local_shipping_outlined;
      default: return Icons.notifications_none_outlined;
    }
  }
}
