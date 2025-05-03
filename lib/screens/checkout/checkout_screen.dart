import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  String _deliveryOption = 'Reguler (Tomorrow Arrive)';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(width: 4),
            const Flexible(
              child: Text(
                'Checkout',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22, 
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            _buildAddressCard(),
            const SizedBox(height: 16),
            _buildItemCard(),
            const SizedBox(height: 16),
            _buildShippingOptions(),
            const SizedBox(height: 16),
            _buildRentalPeriod(),
            const SizedBox(height: 16),
            _buildPaymentDetails(),
            const SizedBox(height: 24), // Tambah jarak sebelum total
            _buildBottomTotal(),
            const SizedBox(height: 20), // Tambah padding bawah
          ],
        ),
      ),
    );
  }

  Widget _buildAddressCard() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFD9EBD2),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        children: [
          const Icon(Icons.location_on, color: Colors.green),
          const SizedBox(width: 8),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nuansa Bening (+62)812-3456-7890", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text(
                  "Jl. Melati No. 45, RT 04 / RW 03 Kel. Sukamaju, Kec. Cibinong Kab. Bogor, Jawa Barat 16913 Indonesia",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildItemCard() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFD9EBD2),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/EIGER-BOOTS.png',
                  width: 48,
                  height: 48,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 48,
                      height: 48,
                      color: Colors.grey[300],
                      child: const Icon(Icons.broken_image, size: 20),
                    );
                  },
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('EIGER CAYMAN LITE SHOES', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text('3 Unit', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
              const Text('Rp30.000'),
            ],
          ),
          const Divider(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Message for Admin', style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Write a Message >', style: TextStyle(color: Colors.green)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildShippingOptions() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFD9EBD2),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Shipping Options', style: TextStyle(fontWeight: FontWeight.bold)),
          Row(
            children: [
              Expanded(child: _buildRadioOption('Delivery', selected: true)),
              Expanded(child: _buildRadioOption('Pick Up', selected: false)),
            ],
          ),
          const Divider(),
          _buildDeliveryChoice('Reguler (Tomorrow Arrive)', 'Rp10.000'),
          _buildDeliveryChoice('Instant (3 Hours)', 'Rp17.000'),
          _buildDeliveryChoice('Cheap (1 Day)', 'Rp7.000'),
        ],
      ),
    );
  }

  Widget _buildRadioOption(String label, {required bool selected}) {
    return Row(
      children: [
        Radio(
          value: label,
          groupValue: selected ? label : '',
          onChanged: (_) {},
          activeColor: Colors.green,
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 12), 
        ),
      ],
    );
  }

  Widget _buildDeliveryChoice(String label, String price) {
    return RadioListTile(
      value: label,
      groupValue: _deliveryOption,
      onChanged: (value) {
        setState(() {
          _deliveryOption = value.toString();
        });
      },
      activeColor: Colors.green,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 12)), // perkecil label
          Text(price, style: const TextStyle(fontSize: 12)), // perkecil harga
        ],
      ),
    );
  }

  Widget _buildRentalPeriod() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFD9EBD2),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('17 March - 20 March 2025'),
          Text('3 Day >', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildPaymentDetails() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFD9EBD2),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Payment Details', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          _buildPaymentRow('Subtotal', 'Rp270.000'),
          _buildPaymentRow('Shipping Fee', 'Rp10.000'),
          _buildPaymentRow('Service Fee', 'Rp1.000'),
          const Divider(),
          _buildPaymentRow('Total Payment', 'Rp281.000', bold: true),
        ],
      ),
    );
  }

  Widget _buildPaymentRow(String label, String amount, {bool bold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: bold ? const TextStyle(fontWeight: FontWeight.bold) : null),
          Text(amount, style: bold ? const TextStyle(fontWeight: FontWeight.bold) : null),
        ],
      ),
    );
  }

  Widget _buildBottomTotal() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20), // Tambah padding bawah
      child: Row(
        children: [
          const Expanded(
            child: Text(
              "Total Rp281.000",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF91C788),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            ),
            child: const Text("Next", style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}