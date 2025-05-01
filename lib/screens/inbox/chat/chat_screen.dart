import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Status bar space
          const SizedBox(height: 44),

          // Header with back button and inbox title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                const Icon(Icons.arrow_back, size: 24),
                const SizedBox(width: 16),
                const Text(
                  'Inbox',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                ),
                const Spacer(),
                Row(
                  children: [
                    // Status icons in top right (battery, wifi, etc.)
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Chat and Notification tabs
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 31,
                    decoration: BoxDecoration(
                      color: const Color(0xFF6FAE6F),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Chat',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 7),
                Expanded(
                  child: Container(
                    height: 31,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD0E7D0),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Notification',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 14),

          // Admin Banner
          Container(
            width: double.infinity,
            height: 46,
            color: const Color(0xFF6FAE6F),
            padding: const EdgeInsets.only(left: 63),
            alignment: Alignment.centerLeft,
            child: const Text(
              'Admin',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          // Chat messages area
          Expanded(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  children: [
                    const SizedBox(height: 24),

                    // First received message
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 176,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEFF8F3),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 2,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 6.0,
                                top: 0,
                                right: 0,
                                bottom: 10,
                              ),
                              child: Text(
                                'Halo min!',
                                style: TextStyle(
                                  fontFamily: 'Alata',
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 2,
                              bottom: 2,
                              child: Text(
                                '12.08',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 5,
                                  fontFamily: 'Alata',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Sent message
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 176,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFFE4E5E4),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 2,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 4.0,
                                top: 0,
                                right: 0,
                                bottom: 10,
                              ),
                              child: Text(
                                'Halo kak! Ada yang bisa\nsaya bantu?',
                                style: TextStyle(
                                  fontFamily: 'Alata',
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 2,
                              bottom: 2,
                              child: Text(
                                '12.20',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 5,
                                  fontFamily: 'Alata',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Second received message
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 176,
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEFF8F3),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 2,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 6.0,
                                top: 0,
                                right: 0,
                                bottom: 10,
                              ),
                              child: Text(
                                'Apakah masih ada\ntenda untuk besok?',
                                style: TextStyle(
                                  fontFamily: 'Alata',
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 2,
                              bottom: 2,
                              child: Text(
                                '12.22',
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 5,
                                  fontFamily: 'Alata',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Message input area
          Container(
            width: double.infinity,
            height: 76,
            color: const Color(0xFFA2D7A2),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.add, color: Color(0xFF6FAE6F)),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 38,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Write a Message',
                      style: TextStyle(
                        color: Color.fromARGB(26, 11, 11, 11),
                        fontSize: 13,
                        fontFamily: 'Alata',
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.send,
                    color: Color(0xFFA2D7A2),
                    size: 18,
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
