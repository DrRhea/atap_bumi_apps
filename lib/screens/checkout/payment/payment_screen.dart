import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  // Default selected payment method (Transfer Bank is selected in the image)
  String selectedPayment = "Transfer Bank";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              // Status bar mockup
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "09:41",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.signal_cellular_4_bar, size: 18),
                      SizedBox(width: 5),
                      Icon(Icons.wifi, size: 18),
                      SizedBox(width: 5),
                      Icon(Icons.battery_full, size: 18),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              
              // Back button and title
              Row(
                children: [
                  Icon(Icons.arrow_back, size: 24),
                  const SizedBox(width: 10),
                  const Text(
                    "Payment Methods",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              
              // Payment options
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFCAEAD0),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      // Cash On Delivery
                      _buildPaymentOption(
                        "Cash On Delivery", 
                        Icons.money, 
                        isSelected: selectedPayment == "Cash On Delivery",
                      ),
                      
                      // Transfer Bank
                      _buildPaymentOption(
                        "Transfer Bank", 
                        Icons.account_balance, 
                        isSelected: selectedPayment == "Transfer Bank",
                      ),
                      
                      // E-Wallet
                      _buildPaymentOption(
                        "E - Wallet", 
                        Icons.account_balance_wallet, 
                        isSelected: selectedPayment == "E - Wallet",
                      ),
                      
                      // Debit Card/Credit Card
                      _buildPaymentOption(
                        "Debit Card/Credit Card", 
                        Icons.credit_card, 
                        isSelected: selectedPayment == "Debit Card/Credit Card",
                        hasBorder: false,
                      ),
                    ],
                  ),
                ),
              ),
              
              const Spacer(),
              
              // Pay Now button
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFCAEAD0),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    "Pay Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              
              // Home indicator
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 100,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _buildPaymentOption(String title, IconData icon, {required bool isSelected, bool hasBorder = true}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedPayment = title;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: hasBorder ? Border(
            bottom: BorderSide(
              color: Colors.grey.withOpacity(0.2),
              width: 0.5,
            ),
          ) : null,
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          children: [
            // Radio button
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? const Color(0xFF008055) : Colors.grey,
                  width: 2,
                ),
              ),
              child: isSelected 
                ? Center(
                    child: Container(
                      width: 14,
                      height: 14,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF008055),
                      ),
                    ),
                  )
                : null,
            ),
            const SizedBox(width: 15),
            
            // Icon
            Container(
              width: 30,
              height: 30,
              alignment: Alignment.center,
              child: Icon(
                icon, 
                size: 24,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 10),
            
            // Title
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}