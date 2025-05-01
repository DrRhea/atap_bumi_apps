import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        body: UserProfileScreen(),
      ),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFA2D7A2), // Warna hijau muda untuk background
      child: Column(
        children: [
          // Header dengan profil user
          Container(
            padding: EdgeInsets.only(top: 60, bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Circle avatar dengan badge member
                Stack(
                  alignment: Alignment.center,
                  children: [
                    // Circle background
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF6B8E6B).withOpacity(0.3),
                        border: Border.all(
                          color: Color(0xFF6B8E6B),
                          width: 2,
                        ),
                      ),
                    ),
                    // Silhouette icon
                    Icon(
                      Icons.person_outline,
                      size: 60,
                      color: Color(0xFF2C542C),
                    ),
                    // Member badge
                    Positioned(
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: Color(0xFF6FAE6F),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          'MEMBER',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Alexandria',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                // Nama pengguna
                Text(
                  'Nuansa Bening AJ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: 'Alexandria',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          
          // Content area (white background rounded top corners)
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 25),
                    
                    // My Profile item
                    ProfileMenuItem(
                      icon: Icons.person_outline,
                      title: 'My Profile',
                      isBold: true,
                    ),
                    
                    // My Address item
                    ProfileMenuItem(
                      icon: Icons.location_on_outlined,
                      title: 'My Address',
                    ),
                    
                    // Change Password item
                    ProfileMenuItem(
                      icon: Icons.lock_outline,
                      title: 'Change Password',
                    ),
                    
                    SizedBox(height: 40),
                    
                    // Logout button
                    Container(
                      width: double.infinity,
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFFC0C0),
                          foregroundColor: Color(0xFFE23C3C),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Text(
                          'Log out',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Alexandria',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    
                    Spacer(),
                    
                    // Bottom navigation bar
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color(0xFFA2D7A2),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BottomNavItem(icon: Icons.home_outlined),
                          BottomNavItem(icon: Icons.receipt_long_outlined),
                          BottomNavItem(icon: Icons.chat_bubble_outline),
                          BottomNavItem(icon: Icons.person, isSelected: true),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Profile menu item widget
class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isBold;
  
  const ProfileMenuItem({
    required this.icon,
    required this.title,
    this.isBold = false,
  });
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            children: [
              Icon(
                icon,
                size: 26,
                color: Colors.black54,
              ),
              SizedBox(width: 15),
              Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Alexandria',
                  fontWeight: isBold ? FontWeight.w700 : FontWeight.w600,
                ),
              ),
              Spacer(),
              Icon(
                Icons.chevron_right,
                color: Colors.black54,
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          color: Color(0xFFD0E7D0),
        ),
      ],
    );
  }
}

// Bottom navigation item widget
class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  
  const BottomNavItem({
    required this.icon,
    this.isSelected = false,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 70,
      child: Icon(
        icon,
        color: isSelected ? Colors.black : Colors.black54,
        size: 26,
      ),
    );
  }
}