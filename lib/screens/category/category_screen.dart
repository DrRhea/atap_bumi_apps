import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SubcategoryItem {
  final String title;
  final int itemCount;
  final String icon;

  const SubcategoryItem({
    required this.title,
    required this.itemCount,
    required this.icon,
  });
}

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'Category',
          style: TextStyle(
            color: Color.fromARGB(255, 7, 7, 7),
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
                      icon: 'assets/images/SINGLE.png',
                    ),
                    SubcategoryItem(
                      title: 'Double-Layer Tent',
                      itemCount: 10,
                      icon: 'assets/images/DOUBLE.png',
                    ),
                    SubcategoryItem(
                      title: 'Flysheet',
                      itemCount: 5,
                      icon: 'assets/images/FLYSHEET.png',
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
                      icon: 'assets/images/HAT.png',
                    ),
                    SubcategoryItem(
                      title: 'Outdoor Shirt',
                      itemCount: 10,
                      icon: 'assets/images/SHIRT.png',
                    ),
                    SubcategoryItem(
                      title: 'Jacket / Outerwear',
                      itemCount: 10,
                      icon: 'assets/images/JACKET.png',
                    ),
                    SubcategoryItem(
                      title: 'Outdoor Pants',
                      itemCount: 5,
                      icon: 'assets/images/PANTS.png',
                    ),
                    SubcategoryItem(
                      title: 'Hiking Boots',
                      itemCount: 10,
                      icon: 'assets/images/BOOTS.png',
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
                      icon: 'assets/images/SMALL.png',
                    ),
                    SubcategoryItem(
                      title: 'Large Hiking Carrier',
                      itemCount: 30,
                      icon: 'assets/images/LARGE.png',
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
                      icon: 'assets/images/FOAM.png',
                    ),
                    SubcategoryItem(
                      title: 'Sleeping Bag',
                      itemCount: 10,
                      icon: 'assets/images/SLEEPBAG.png',
                    ),
                    SubcategoryItem(
                      title: 'Air Mattress',
                      itemCount: 10,
                      icon: 'assets/images/AIR.png',
                    ),
                    SubcategoryItem(
                      title: 'Hammock',
                      itemCount: 5,
                      icon: 'assets/images/HAMMOCK.png',
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
                      icon: 'assets/images/NESTING.png',
                    ),
                    SubcategoryItem(
                      title: 'Camping Stove',
                      itemCount: 10,
                      icon: 'assets/images/STOVE.png',
                    ),
                    SubcategoryItem(
                      title: 'Eating Utensils',
                      itemCount: 10,
                      icon: 'assets/images/UTENSIL.png',
                    ),
                    SubcategoryItem(
                      title: 'Gas / Fuel',
                      itemCount: 5,
                      icon: 'assets/images/GAS.png',
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
                      icon: 'assets/images/TABLE.png',
                    ),
                    SubcategoryItem(
                      title: 'Folding Chair',
                      itemCount: 10,
                      icon: 'assets/images/CHAIR.png',
                    ),
                    SubcategoryItem(
                      title: 'Camping Light',
                      itemCount: 10,
                      icon: 'assets/images/LAMP.png',
                    ),
                    SubcategoryItem(
                      title: 'Handy Talkie',
                      itemCount: 5,
                      icon: 'assets/images/WALKIE.png',
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
                            height: 40,
                            child: Image.asset(
                              subcategory.icon,
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  width: 40,
                                  height: 40,
                                  color: Colors.grey.withOpacity(0.3),
                                  child: const Icon(
                                    Icons.broken_image,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
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

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
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