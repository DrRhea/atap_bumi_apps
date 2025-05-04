import 'package:flutter/material.dart';

class TrackingStatusScreen extends StatelessWidget {
  const TrackingStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Shipment in Progress",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        backgroundColor: Colors.green[300],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Peta
            Container(
              margin: const EdgeInsets.all(16),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[300],
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://i.imgur.com/RzTgLln.png", // Placeholder peta, ganti jika perlu
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Estimasi pengiriman
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Estimated arrival on March 23th",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 24),
                  // Progress bar
                  Row(
                    children: [
                      const Icon(Icons.circle, size: 12, color: Colors.green),
                      const Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.green,
                        ),
                      ),
                      const Icon(Icons.check_circle,
                          size: 20, color: Colors.green),
                      const Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.green,
                        ),
                      ),
                      const Icon(Icons.circle_outlined,
                          size: 12, color: Colors.green),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Label progress
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Is being deliver",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        "En Route to Your Address",
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        "Order Arrived",
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
