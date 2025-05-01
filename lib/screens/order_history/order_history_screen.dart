import 'package:flutter/material.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const OrderPage();
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
      backgroundColor: const Color(0xFFE0F0E4),
      appBar: AppBar(
        title: const Text("My Order"),
        backgroundColor: const Color(0xFF008055),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: orders.length,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return OrderCard(order: orders[index]);
        },
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
          // Placeholder Gambar
          Container(
            width: 60,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.image, size: 30, color: Colors.grey),
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

                const SizedBox(height: 10),

                // Tombol kanan bawah
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (isReturned)
                        OutlinedButton(
                          onPressed: () {},
                          child: const Text("Rent Again"),
                        ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isReturned ? Colors.grey[600] : Colors.green[700],
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
