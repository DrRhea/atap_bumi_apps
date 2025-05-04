import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false, // ini penting biar title-nya ga center
        title: const Text(
          'Category',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Search bar
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD0E7D0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Colors.grey),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search Gear',
                            border: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.tune, color: Colors.grey),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                // Tent Category
                CategoryCard(
                  title: 'TENT',
                  itemCount: 25,
                  subcategories: [
                    SubcategoryItem(
                      title: 'Single-Layer Tent',
                      itemCount: 10,
                      icon: 'tenda1.png',
                    ),
                    SubcategoryItem(
                      title: 'Double-Layer Tent',
                      itemCount: 10,
                      icon: 'double.png',
                    ),
                    SubcategoryItem(
                      title: 'Flysheet',
                      itemCount: 5,
                      icon: 'flysheet.png',
                    ),
                  ],
                ),

                // Outdoor Apparel Category
                CategoryCard(
                  title: 'OUTDOOR APPAREL',
                  itemCount: 42,
                  subcategories: [
                    SubcategoryItem(
                      title: 'Hat / Cap',
                      itemCount: 7,
                      icon: 'hat.png',
                    ),
                    SubcategoryItem(
                      title: 'Outdoor Shirt',
                      itemCount: 10,
                      icon: 'baju.png',
                    ),
                    SubcategoryItem(
                      title: 'Jacket / Outerwear',
                      itemCount: 10,
                      icon: 'jacket.png',
                    ),
                    SubcategoryItem(
                      title: 'Outdoor Pants',
                      itemCount: 5,
                      icon: 'celana.png',
                    ),
                    SubcategoryItem(
                      title: 'Hiking Boots',
                      itemCount: 10,
                      icon: 'boots.png',
                    ),
                  ],
                ),

                // Backpacks Category
                CategoryCard(
                  title: 'BACKPACKS',
                  itemCount: 55,
                  subcategories: [
                    SubcategoryItem(
                      title: 'Small Hiking Carrier',
                      itemCount: 25,
                      icon: 'tas-ijo.png',
                    ),
                    SubcategoryItem(
                      title: 'Large Hiking Carrier',
                      itemCount: 30,
                      icon: 'large.png',
                    ),
                  ],
                ),

                // Sleeping Gear Category
                CategoryCard(
                  title: 'SLEEPING GEAR',
                  itemCount: 42,
                  subcategories: [
                    SubcategoryItem(
                      title: 'Foam Mattress',
                      itemCount: 7,
                      icon: 'kompor.png',
                    ),
                    SubcategoryItem(
                      title: 'Sleeping Bag',
                      itemCount: 10,
                      icon: 'selimut.png',
                    ),
                    SubcategoryItem(
                      title: 'Air Mattress',
                      itemCount: 10,
                      icon: 'air.png',
                    ),
                    SubcategoryItem(
                      title: 'Hammock',
                      itemCount: 5,
                      icon: 'hammock.png',
                    ),
                  ],
                ),

                // Cooking Gear Category
                CategoryCard(
                  title: 'COOKING GEAR',
                  itemCount: 32,
                  subcategories: [
                    SubcategoryItem(
                      title: 'Nesting',
                      itemCount: 7,
                      icon: 'nesting.png',
                    ),
                    SubcategoryItem(
                      title: 'Camping Stove',
                      itemCount: 10,
                      icon: 'kompor.png',
                    ),
                    SubcategoryItem(
                      title: 'Eating Utensils',
                      itemCount: 10,
                      icon: 'alat.png',
                    ),
                    SubcategoryItem(
                      title: 'Gas / Fuel',
                      itemCount: 5,
                      icon: 'gas.png',
                    ),
                  ],
                ),

                // Accessories Category
                CategoryCard(
                  title: 'ACCESSORIES',
                  itemCount: 32,
                  subcategories: [
                    SubcategoryItem(
                      title: 'Folding Table',
                      itemCount: 7,
                      icon: 'meja.png',
                    ),
                    SubcategoryItem(
                      title: 'Folding Chair',
                      itemCount: 10,
                      icon: 'chair.png',
                    ),
                    SubcategoryItem(
                      title: 'Camping Light',
                      itemCount: 10,
                      icon: 'lamp.png',
                    ),
                    SubcategoryItem(
                      title: 'Handy Talkie',
                      itemCount: 5,
                      icon: 'handy.png',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final int itemCount;
  final List<SubcategoryItem> subcategories;

  const CategoryCard({
    super.key,
    required this.title,
    required this.itemCount,
    required this.subcategories,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: const Color(0xFFD0E7D0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          // Category header
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '($itemCount)',
                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.chevron_right),
                  ],
                ),
              ],
            ),
          ),
          // Subcategories
          ...subcategories
              .map(
                (subcategory) => Column(
                  children: [
                    const Divider(height: 1, color: Colors.white),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 40,
                            child: Image.asset(
                              subcategory.icon,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: 40,
                                  height: 40,
                                  color: Colors.grey.withOpacity(0.3),
                                );
                              },
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Text(
                              subcategory.title,
                              style: const TextStyle(fontSize: 15),
                            ),
                          ),
                          Text(
                            '(${subcategory.itemCount})',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}

class SubcategoryItem {
  final String title;
  final int itemCount;
  final String icon;

  SubcategoryItem({
    required this.title,
    required this.itemCount,
    required this.icon,
  });

  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      height: 60,
      color: const Color(0xFFA2D7A2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavbarItem(svgPath: 'assets/icon/HOME-2.svg'),
          NavbarItem(svgPath: 'assets/icon/KATEGORI.svg', isSelected: true),
          NavbarItem(svgPath: 'assets/icon/AKTIVITAS.svg'),
          NavbarItem(svgPath: 'assets/icon/PROFILE-2.svg'),
        ],
      ),
    );
  }
}

class NavbarItem extends StatelessWidget {
  final String svgPath;
  final bool isSelected;

  const NavbarItem({required this.svgPath, this.isSelected = false});

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
