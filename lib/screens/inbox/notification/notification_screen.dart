import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            _buildStatusBar(),
            _buildHeader(),
            _buildTabBar(),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _buildNotificationItem(
                    title: 'Limited-Time Weekend Promo!',
                    message:
                        'Get ready for your next camping escape with our special weekend rental promo! Enjoy 10% off on tents, backpacks, stoves, and more when you rent between Friday and Sunday. Don\'t miss this chance — your gear for less, your adventure for more!',
                    icon: Icons.local_offer,
                    isHighlighted: true,
                  ),
                  _buildNotificationItem(
                    title: 'Successful Return Confirmation',
                    message:
                        'Thank you for returning your camping gear! Everything was received in good condition. We appreciate your responsibility and hope to support your next outdoor adventure soon. Don\'t forget to check our latest promos for your future trips!',
                    icon: Icons.check_circle_outline,
                  ),
                  _buildNotificationItem(
                    title: 'Rental Period Ended',
                    message:
                        'Hi there! This is a friendly reminder that your rental period for the backpack has officially ended today. To avoid any late return charges, please make sure to return the item as soon as possible. If you need help or directions to the return point, just tap below!',
                    icon: Icons.access_time,
                  ),
                  _buildNotificationItem(
                    title: 'Upcoming Return Deadline',
                    message:
                        'Hello! Your tent and cooking gear rental is due tomorrow. We hope you had a great trip! To ensure a smooth return process and avoid penalties, kindly prepare the items for drop-off. Let us know if you need pickup service!',
                    icon: Icons.alarm,
                  ),
                  _buildNotificationItem(
                    title: 'Booking Confirmed',
                    message:
                        'Thanks for choosing our service! Your booking has been confirmed for May 10–12. All selected items will be prepared and ready for pickup/delivery.',
                    icon: Icons.calendar_today,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 44,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '09:41',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const Spacer(),
            Row(
              children: [
                const Icon(Icons.signal_cellular_4_bar, size: 16),
                const SizedBox(width: 4),
                const Icon(Icons.wifi, size: 16),
                const SizedBox(width: 4),
                Container(
                  width: 22,
                  height: 12,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black.withOpacity(0.6),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(2.5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(1.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: 8.0,
        bottom: 16.0,
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
          const Text(
            'Inbox',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 36,
              decoration: BoxDecoration(
                color: const Color(0xFFD0E7D0),
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Chat',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              height: 36,
              decoration: BoxDecoration(
                color: const Color(0xFF6FAE6F),
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Notification',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationItem({
    required String title,
    required String message,
    required IconData icon,
    bool isHighlighted = false,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color:
            isHighlighted ? const Color(0x386FAE6F) : const Color(0x2B5A5A5A),
        border: Border(
          top: BorderSide(width: 0.5, color: const Color(0xFF5A5A5A)),
          bottom: BorderSide(width: 0.5, color: const Color(0xFF5A5A5A)),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 24, color: Colors.black54),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  message,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
