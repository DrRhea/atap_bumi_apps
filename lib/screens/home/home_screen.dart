import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                const SizedBox(height: 16),
                _buildSearchBar(),
                const SizedBox(height: 24),
                _buildCategoryGrid(),
                const SizedBox(height: 32),
                _buildRecommendationSection(),
                const SizedBox(height: 32),
                _buildArticlesSection(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello, Bening',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Planning a picnic? Here\'s what you might need!',
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.shopping_cart_outlined, size: 28),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.chat_bubble_outline, size: 28),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const SizedBox(width: 16),
          Icon(Icons.search, color: Colors.grey.shade700),
          const SizedBox(width: 8),
          const Text(
            'Search Gear',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryGrid() {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      childAspectRatio: 1.0,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: [
        _buildCategoryItem(label: 'Tent', color: Colors.green),
        _buildCategoryItem(label: 'Sleeping Gear', color: Colors.green),
        _buildCategoryItem(label: 'Backpack', color: Colors.green),
        _buildCategoryItem(label: 'Cooking Gear', color: Colors.green),
        _buildCategoryItem(label: 'Outdoor Apparel', color: Colors.green),
        _buildCategoryItem(label: 'Accessories', color: Colors.green),
      ],
    );
  }

  Widget _buildCategoryItem({required String label, required Color color}) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: color.withOpacity(0.7),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendationSection() {
    // Daftar paket rekomendasi - bisa ditambahkan lebih banyak paket
    final List<Map<String, dynamic>> packages = [
      {
        'title': 'Trip Starter Pack',
        'price': '115k',
        'items': 'Tent, Carrier, Sleeping Bag, Accessories',
        'icon': Icons.hiking,
      },
      {
        'title': 'Picnic Hangout Pack',
        'price': '90k',
        'items': '4 Portable Chair, 1 Table',
        'icon': Icons.chair_outlined,
      },
      {
        'title': 'Fishing Adventure Pack',
        'price': '135k',
        'items': 'Fishing Rod, Tackle Box, Chair, Cooler',
        'icon': Icons.sailing,
      },
      {
        'title': 'Hiking Essentials Pack',
        'price': '80k',
        'items': 'Backpack, Water Bottle, First Aid Kit, Map',
        'icon': Icons.directions_walk,
      },
      {
        'title': 'Camping Cookout Pack',
        'price': '110k',
        'items': 'Portable Stove, Cookware Set, Utensils',
        'icon': Icons.outdoor_grill,
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'You Might Like',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // Optional: Tambahkan tombol "See All" jika diinginkan
            TextButton(
              onPressed: () {
                // Navigasi ke halaman paket lengkap
              },
              child: const Text('See All'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        // Container dengan tinggi tetap untuk slider
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: packages.length,
            itemBuilder: (context, index) {
              return Container(
                width: 280, // Lebar tetap untuk setiap kartu paket
                margin: EdgeInsets.only(right: 12),
                child: _buildPackageCard(
                  title: packages[index]['title'],
                  price: packages[index]['price'],
                  items: packages[index]['items'],
                  imageIcon: packages[index]['icon'],
                  bgColor: Colors.green.shade100,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPackageCard({
    required String title,
    required String price,
    required String items,
    required IconData imageIcon,
    required Color bgColor,
  }) {
    return Container(
      height: double.infinity, // Kartu mengisi tinggi yang tersedia
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon dan bagian harga
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(imageIcon, size: 60, color: Colors.orange),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Just $price/night!',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Judul dan item section
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color(0xFFD7EAD9),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    items,
                    style: TextStyle(color: Colors.grey[700]),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildArticlesSection() {
    // Daftar artikel contoh - bisa ditambahkan lebih banyak artikel
    final List<Map<String, String>> articles = [
      {
        'title': 'Tent Setup for Beginners',
        'description':
            'Learn the essential steps to pitch your tent with ease and confidence. Perfect for first-time campers looking to avoid common mistakes and stay comfortable outdoors.',
      },
      {
        'title': 'Choosing the Right Backpack for Your Trip',
        'description':
            'A guide to picking the perfect backpack based on trip length, terrain, and comfort.',
      },
      {
        'title': 'Best Campfire Foods',
        'description':
            'Delicious and easy meal ideas that will make your camping experience more enjoyable.',
      },
      {
        'title': 'Essential Hiking Safety Tips',
        'description':
            'Stay safe on the trails with these proven hiking safety guidelines for all experience levels.',
      },
      {
        'title': 'Winter Camping Guide',
        'description':
            'How to prepare and enjoy camping during the colder months while staying warm and comfortable.',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Outdoor Articles & Tips',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            // Optional: Tambahkan tombol "See All" jika diinginkan
            TextButton(
              onPressed: () {
                // Navigasi ke halaman artikel lengkap
              },
              child: const Text('See All'),
            ),
          ],
        ),
        const SizedBox(height: 16),
        // Container dengan tinggi tetap untuk slider
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return Container(
                width: 280, // Lebar tetap untuk setiap kartu artikel
                margin: EdgeInsets.only(right: 12),
                child: _buildArticleCard(
                  title: articles[index]['title']!,
                  description: articles[index]['description']!,
                  bgColor: Colors.green.shade100,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildArticleCard({
    required String title,
    required String description,
    required Color bgColor,
  }) {
    return Container(
      height: double.infinity, // Kartu mengisi tinggi yang tersedia
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Area gambar placeholder (tinggi tetap)
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
          ),
          // Area konten (mengambil sisa ruang)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Expanded(
                    child: Text(
                      description,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return Container(
      height: 60,
      decoration: BoxDecoration(color: Colors.green.shade100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavBarItem(Icons.home_outlined, true),
          _buildNavBarItem(Icons.article_outlined, false),
          _buildNavBarItem(Icons.explore_outlined, false),
          _buildNavBarItem(Icons.person_outline, false),
        ],
      ),
    );
  }

  Widget _buildNavBarItem(IconData icon, bool isSelected) {
    return Icon(
      icon,
      size: 28,
      color: isSelected ? Colors.green.shade700 : Colors.grey.shade700,
    );
  }
}
