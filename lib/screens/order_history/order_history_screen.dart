import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false, // Changed to false to remove debug banner
      home: Scaffold(
        body: OrderPage(),
        bottomNavigationBar: Container(
          height: 60,
          color: Color(0xFFA2D7A2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavbarItem(
                svgPath: 'assets/icon/HOME-2.svg',
              ),
              NavbarItem(
                svgPath: 'assets/icon/KATEGORI.svg',
              ),
              NavbarItem(
                svgPath: 'assets/icon/AKTIVITAS.svg',
                isSelected: true,
              ),
              NavbarItem(
                svgPath: 'assets/icon/PROFILE-2.svg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  final List<OrderItem> orders = const [
    OrderItem(
      title: "EIGER SPEEDTREK 30L BACKPACK",
      unit: "1 Unit",
      days: "2 Day",
      price: 35000,
      total: 70000,
      status: "Reserved",
    ),
    OrderItem(
      title: "AVTECH - Sleeping Bag Outdoor Camping Hiking",
      unit: "1 Unit",
      days: "3 Day",
      price: 25000,
      total: 75000,
      status: "Reserved",
    ),
    OrderItem(
      title: "EIGER CAYMAN LITE SHOES",
      unit: "1 Unit",
      days: "3 Day",
      price: 30000,
      total: 390000,
      status: "Returned",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "My Order",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: orders.length,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemBuilder: (context, index) {
                  return OrderCard(order: orders[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final OrderItem order;

  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final isReturned = order.status == "Returned";

    String getImagePath(String title) {
      if (title == "EIGER SPEEDTREK 30L BACKPACK") return "assets/images/EIGER-BAG.png";
      if (title == "AVTECH - Sleeping Bag Outdoor Camping Hiking") return "assets/images/SLEEPBAG2.png";
      if (title == "EIGER CAYMAN LITE SHOES") return "assets/images/EIGER-BOOTS.png";
      return "assets/images/default.png"; // Fallback jika tidak ada
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Gambar Produk
          Container(
            width: 60,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(getImagePath(order.title)),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),

          // Kolom Isi
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Baris Judul & Status
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        order.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Text(
                      order.status,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),

                Text(order.unit),
                Text(order.days),

                const SizedBox(height: 10),
                
                // Harga dan Total 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 1),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Rp${order.price.toStringAsFixed(0)}"),
                        const SizedBox(height: 5),
                        if (isReturned)
                          const Center(
                            child: Text(
                              "View All",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        Text(
                          "Total ${order.unit.split(' ').first} Product: Rp${order.total.toStringAsFixed(0)}",
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // Tombol kanan bawah
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (isReturned)
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                          ),
                          onPressed: () {},
                          child: const Text("Rent Again"),
                        ),
                      if (isReturned) const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                        ),
                        child: Text(isReturned ? "Rate" : "Return"),
                      ),
                    ],
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

class OrderItem {
  final String title;
  final String unit;
  final String days;
  final int price;
  final int total;
  final String status;

  const OrderItem({
    required this.title,
    required this.unit,
    required this.days,
    required this.price,
    required this.total,
    required this.status,
  });
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
          color: isSelected ? Colors.black : const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}