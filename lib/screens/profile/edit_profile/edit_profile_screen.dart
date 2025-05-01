import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFA2D7A2),
        fontFamily: 'Alexandria',
      ),
      home: const SafeArea(child: EditProfilePage()),
    );
  }
}

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFA2D7A2),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              // App Bar Section
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              
              // Profile Photo Section
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 32),
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 129,
                        height: 129,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://placehold.co/129x129"),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: const BoxDecoration(
                            color: Color(0xFF007F43),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              // Form Section
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24, 28, 24, 24),
                    child: Column(
                      children: [
                        // Username Field
                        buildProfileField(
                          label: 'Username',
                          value: 'Nuansa Bening AJ',
                        ),
                        const SizedBox(height: 24),
                        
                        // Email Field
                        buildProfileField(
                          label: 'Email',
                          value: 'nbening@gmail.com',
                        ),
                        const SizedBox(height: 24),
                        
                        // Phone Field
                        buildProfileField(
                          label: 'Phone',
                          value: '(+62) 812-3456-7890',
                        ),
                        const SizedBox(height: 24),
                        
                        // Date of Birth Field
                        buildProfileField(
                          label: 'Date of Birth',
                          value: '31/08/05',
                        ),
                        
                        // Save Button
                        const Spacer(),
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFA2D7A2),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text(
                              'Save',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget buildProfileField({required String label, required String value}) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 100,
              child: Text(
                label,
                style: const TextStyle(
                  color: Color(0xFF5A5A5A),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const Spacer(),
            Text(
              value,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Container(
          height: 4,
          decoration: BoxDecoration(
            color: const Color(0xFFD0E7D0),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    );
  }
}