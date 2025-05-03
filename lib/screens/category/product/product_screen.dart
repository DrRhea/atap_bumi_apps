import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(),
            _buildSearchBar(),
            Expanded(child: _buildProductGrid()),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        children: [
          const Icon(Icons.arrow_back, size: 24),
          const SizedBox(width: 16),
          Text(
            'Outdoor Apparel',
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

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10.0),
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          color: const Color(0xFFD0E7D0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(width: 16),
            const Icon(Icons.search, color: Color(0xCC6A6D6A), size: 20),
            const SizedBox(width: 10),
            Text(
              'Outdoor',
              style: TextStyle(
                color: const Color(0xCC6A6D6A),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            const Icon(Icons.filter_list, color: Color(0xCC6A6D6A), size: 20),
            const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildProductGrid() {
    // Product data (name, price, image path)
    final List<Map<String, dynamic>> products = [
      {
        'name': 'Shoes Eiger Air Man',
        'price': 'Rp. 50.000',
        'image': 'assets/images/BOOTS.png',
      },
      {
        'name': 'Shoes Salomon',
        'price': 'Rp. 40.000',
        'image': 'assets/images/SALOMON.png',
      },
      {
        'name': 'Jacket The Nort Face',
        'price': 'Rp. 50.000',
        'image': 'assets/images/JACKET2.png',
      },
      {
        'name': 'Eiger Sweatet T-shirt',
        'price': 'Rp. 40.000',
        'image': 'assets/images/EIGER-SHIRT.png',
      },
      {
        'name': 'Eiger Tracktop',
        'price': 'Rp. 50.000',
        'image': 'assets/images/EIGER-HAT.png',
      },
      {
        'name': 'Eiger Hats',
        'price': 'Rp. 40.000',
        'image': 'assets/images/EIGER-HAT2.png',
      },
    ];

    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 10.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 18.0,
        mainAxisSpacing: 20.0,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return _buildProductCard(
          name: products[index]['name'],
          price: products[index]['price'],
          imagePath: products[index]['image'],
        );
      },
    );
  }

  Widget _buildProductCard({
    required String name,
    required String price,
    required String imagePath,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0x7FD9D9D9),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  // Use a placeholder image when asset can't be found
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    alignment: Alignment.center,
                    child: _buildPlaceholderImage(name),
                  );
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          name,
          style: TextStyle(
            color: Colors.black.withOpacity(0.8),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 5),
        Text(
          price,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  // This is a helper function to create placeholder images that match your design
  Widget _buildPlaceholderImage(String name) {
    IconData icon;
    Color bgColor;

    if (name.toLowerCase().contains('shoe')) {
      icon = Icons.hiking;
      bgColor = Colors.orange.shade100;
    } else if (name.toLowerCase().contains('jacket')) {
      icon = Icons.layers;
      bgColor = Colors.black;
    } else if (name.toLowerCase().contains('t-shirt')) {
      icon = Icons.beach_access;
      bgColor = Colors.blue;
    } else if (name.toLowerCase().contains('hat')) {
      icon = Icons.face;
      bgColor = Colors.brown.shade300;
    } else if (name.toLowerCase().contains('track')) {
      icon = Icons.sports_baseball;
      bgColor = Colors.grey.shade400;
    } else {
      icon = Icons.shopping_bag;
      bgColor = Colors.grey;
    }

    return Container(
      width: double.infinity,
      height: double.infinity,
      color: bgColor,
      child: Icon(icon, size: 50, color: Colors.white),
    );
  }
}