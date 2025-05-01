import 'package:flutter/material.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Alexandria',
      ),
      home: const SafeArea(child: MyAddressPage()),
    );
  }
}

class MyAddressPage extends StatelessWidget {
  const MyAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App Bar
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 24.0),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                  const SizedBox(width: 16),
                  const Text(
                    'My Address',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Alexandria',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            
            // Address Container
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFC7E0C7),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Address 1
                  _buildAddressItem(
                    'Jl. Diponegoro No. 123, RT 004 / RW 005,\nKelurahan Citarum, Kecamatan Bandung Wetan,\nKota Bandung, Jawa Barat 40115',
                  ),
                  const Divider(height: 1, color: Colors.black26),
                  
                  // Address 2
                  _buildAddressItem(
                    'Jl. Ir. H. Juanda No. 88, RT 004 / RW 005,\nKelurahan Dago, Kecamatan Coblong,\nKota Bandung, Jawa Barat 40135',
                  ),
                  const Divider(height: 1, color: Colors.black26),
                  
                  // Address 3
                  _buildAddressItem(
                    'Jl. Ir. H. Juanda No. 88, RT 002 / RW 001,\nKelurahan Dago, Kecamatan Coblong,\nKota Bandung, Jawa Barat 40135',
                  ),
                  const Divider(height: 1, color: Colors.black26),
                  
                  // Address 4
                  _buildAddressItem(
                    'Jl. AH Nasution No. 56, RT 003 / RW 007,\nKelurahan Pasanggrahan, Kecamatan Ujungberung,\nKota Bandung, Jawa Barat 40611',
                  ),
                  const Divider(height: 1, color: Colors.black26),
                  
                  // Add New Address Button
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Center(
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle_outline,
                          color: Colors.black,
                        ),
                        label: const Text(
                          'Tambah Alamat Baru',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Alexandria',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddressItem(String address) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Text(
        address,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 13,
          fontFamily: 'Alexandria',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}