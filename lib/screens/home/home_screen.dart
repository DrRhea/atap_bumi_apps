import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                const SizedBox(height: 12),
                _buildSearchBar(),
                const SizedBox(height: 20),
                _buildCategoryGrid(),
                const SizedBox(height: 24),
                _buildRecommendationSection(context),
                const SizedBox(height: 24),
                _buildArticlesSection(context),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
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
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'Alexandria',
              ),
            ),
            const Text(
              'Ready for camping? Let\'s gear up!',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontFamily: 'Alexandria',
              ),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/icon/KERANJANG.svg',
                width: 28,
                height: 28,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                'assets/icon/MESSAGE.svg',
                width: 28,
                height: 28,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          const SizedBox(width: 12),
          Icon(Icons.search, color: Colors.grey.shade700),
          const SizedBox(width: 8),
          const Text(
            'Search Gear',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontFamily: 'Alexandria',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryGrid() {
    final categories = [
      {'label': 'Tent', 'icon': 'assets/icon/TENDA.svg'},
      {'label': 'Sleeping Gear', 'icon': 'assets/icon/TIDUR.svg'},
      {'label': 'Backpack', 'icon': 'assets/icon/TAS.svg'},
      {'label': 'Cooking Gear', 'icon': 'assets/icon/MASAK.svg'},
      {'label': 'Outdoor Apparel', 'icon': 'assets/icon/PAKAIAN.svg'},
      {'label': 'Accessories', 'icon': 'assets/icon/AKSESORIS.svg'},
    ];

    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      childAspectRatio: 0.85, // Adjusted for larger items
      crossAxisSpacing: 10, // Increased spacing
      mainAxisSpacing: 10, // Increased spacing
      children: categories.map((category) {
        return _buildCategoryItem(
          label: category['label']!,
          iconPath: category['icon']!,
          color: const Color(0xFFD7EAD9),
        );
      }).toList(),
    );
  }

  Widget _buildCategoryItem({
    required String label,
    required String iconPath,
    required Color color,
  }) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80, // Increased size
            width: 80,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: SvgPicture.asset(
                iconPath,
                width: 48, // Larger icon
                height: 48,
              ),
            ),
          ),
          const SizedBox(height: 8), // Adjusted spacing
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14, // Increased font size
              fontWeight: FontWeight.w500,
              fontFamily: 'Alexandria',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendationSection(BuildContext context) {
    final packages = [
      {
        'title': 'Trip Starter Pack',
        'price': '115k',
        'items': 'Tent, Carrier, Sleeping Bag, Accessories',
        'image': 'assets/images/PAKET.png',
      },
      {
        'title': 'Picnic Hangout Pack',
        'price': '90k',
        'items': '4 Portable Chair, 1 Table',
        'image': 'assets/images/PAKET2.png',
      },
      {
        'title': 'Hiking Essentials Pack',
        'price': '80k',
        'items': 'Backpack, Water Bottle, First Aid Kit, Map',
        'image': 'assets/images/PAKET3.png',
      },
      {
        'title': 'Camping Cookout Pack',
        'price': '110k',
        'items': 'Portable Stove, Cookware Set, Utensils',
        'image': 'assets/images/PAKET4.png',
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
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Alexandria',
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'See All',
                style: TextStyle(fontFamily: 'Alexandria'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: packages.length,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.6,
                margin: const EdgeInsets.only(right: 10),
                child: _buildPackageCard(
                  title: packages[index]['title']!,
                  price: packages[index]['price']!,
                  items: packages[index]['items']!,
                  imagePath: packages[index]['image']!,
                  bgColor: Colors.grey.shade300,
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
    required String imagePath,
    required Color bgColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
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
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Alexandria',
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    items,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 12,
                      fontFamily: 'Alexandria',
                    ),
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

  Widget _buildArticlesSection(BuildContext context) {
    final articles = [
      {
        'title': 'Tent Setup for Beginners',
        'description':
            'Learn the essential steps to pitch your tent with ease and confidence.',
        'image': 'assets/images/ARTIKEL1.jpg',
      },
      {
        'title': 'Choosing the Right Backpack',
        'description':
            'A guide to picking the perfect backpack for your trip.',
        'image': 'assets/images/ARTIKEL2.jpg',
      },
      {
        'title': 'Best Campfire Foods',
        'description':
            'Delicious and easy meal ideas for your camping experience.',
        'image': 'assets/images/ARTIKEL3.jpg',
      },
      {
        'title': 'Essential Hiking Safety Tips',
        'description':
            'Stay safe on the trails with these proven guidelines.',
        'image': 'assets/images/ARTIKEL4.jpg',
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
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Alexandria',
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'See All',
                style: TextStyle(fontFamily: 'Alexandria'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return Container(
                width: MediaQuery.of(context).size.width * 0.6,
                margin: const EdgeInsets.only(right: 10),
                child: _buildArticleCard(
                  title: articles[index]['title']!,
                  description: articles[index]['description']!,
                  imagePath: articles[index]['image']!,
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
    required String imagePath,
    required Color bgColor,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Alexandria',
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Expanded(
                    child: Text(
                      description,
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.grey.shade700,
                        fontFamily: 'Alexandria',
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
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

  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      height: 60,
      color: const Color(0xFFA2D7A2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavbarItem(
            svgPath: 'assets/icon/HOME-2.svg',
            isSelected: true,
          ),
          NavbarItem(
            svgPath: 'assets/icon/KATEGORI.svg',
          ),
          NavbarItem(
            svgPath: 'assets/icon/AKTIVITAS.svg',
          ),
          NavbarItem(
            svgPath: 'assets/icon/PROFILE-2.svg',
          ),
        ],
      ),
    );
  }
}

class NavbarItem extends StatelessWidget {
  final String svgPath;
  final bool isSelected;

  const NavbarItem({
    required this.svgPath,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      child: Center(
        child: SvgPicture.asset(
          svgPath,
          width: 24,
          height: 24,
          color: isSelected ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}