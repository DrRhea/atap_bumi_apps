import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<CartItem> cartItems = [
    CartItem(name: "Eiger cayman lite shoes", price: 30000, quantity: 3, selected: true),
    CartItem(name: "Eiger speedtrek 30L backpack", price: 40000, quantity: 1),
    CartItem(name: "EIGER ECOSAVIOR 45 WS CARRIER WHITE", price: 70000, quantity: 1),
  ];

  int get totalSelectedItems => cartItems.where((item) => item.selected).length;

  int get totalPrice => cartItems
      .where((item) => item.selected)
      .fold(0, (sum, item) => sum + (item.price * item.quantity));

  void toggleSelection(int index) {
    setState(() {
      cartItems[index].selected = !cartItems[index].selected;
    });
  }

  void increaseQuantity(int index) {
    setState(() {
      cartItems[index].quantity++;
    });
  }

  void decreaseQuantity(int index) {
    setState(() {
      if (cartItems[index].quantity > 1) {
        cartItems[index].quantity--;
      }
    });
  }

  String formatRupiah(int number) {
    final str = number.toString();
    final buffer = StringBuffer();
    int count = 0;

    for (int i = str.length - 1; i >= 0; i--) {
      buffer.write(str[i]);
      count++;
      if (count % 3 == 0 && i != 0) {
        buffer.write('.');
      }
    }

    return 'Rp${buffer.toString().split('').reversed.join()}';
  }

  String getImagePath(String name) {
    if (name.toLowerCase().contains("eiger cayman lite shoes")) {
      return "assets/images/EIGER-BOOTS.png";
    } else if (name.toLowerCase().contains("eiger speedtrek 30l backpack")) {
      return "assets/images/EIGER-BAG.png";
    } else if (name.toLowerCase().contains("eiger ecosavior 45 ws carrier white")) {
      return "assets/images/EIGER-BAG2.png";
    }
    return "assets/images/default.png"; // Fallback jika tidak ada gambar
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cart",
          style: TextStyle(
            fontFamily: 'Alexandria',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: cartItems.length,
              separatorBuilder: (_, __) => const Divider(height: 0),
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => toggleSelection(index),
                        child: Icon(
                          item.selected
                              ? Icons.check_box
                              : Icons.check_box_outline_blank,
                          color: item.selected ? Colors.green : const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          image: DecorationImage(
                            image: AssetImage(getImagePath(item.name)),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                fontFamily: 'Alexandria',
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              formatRupiah(item.price),
                              style: const TextStyle(
                                fontFamily: 'Alexandria',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 28,
                            height: 28,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              iconSize: 18,
                              icon: const Icon(Icons.remove),
                              onPressed: () => decreaseQuantity(index),
                            ),
                          ),
                          SizedBox(
                            width: 28,
                            child: Center(
                              child: Text(
                                item.quantity.toString().padLeft(2, '0'),
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Alexandria',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 28,
                            height: 28,
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              iconSize: 18,
                              icon: const Icon(Icons.add),
                              onPressed: () => increaseQuantity(index),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // Bottom Bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: Colors.green[50],
              borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Selected Items (${totalSelectedItems})",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Alexandria',
                      ),
                    ),
                    Text(
                      "Total : ${formatRupiah(totalPrice)}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Alexandria',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[300],
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Checkout",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Alexandria',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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

class CartItem {
  String name;
  int price;
  int quantity;
  bool selected;

  CartItem({
    required this.name,
    required this.price,
    this.quantity = 1,
    this.selected = false,
  });
}