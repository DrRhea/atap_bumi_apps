import 'package:flutter/material.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Status bar spacing
                const SizedBox(height: 16),
                
                // Back button
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.arrow_back,
                      size: 24,
                      color: Colors.black,
                    ),
                  ),
                ),
                
                const SizedBox(height: 24),
                
                // Create New Password header
                const Text(
                  'Create New Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.17,
                  ),
                ),
                
                const SizedBox(height: 16),
                
                // Instruction text
                const Text(
                  'Your new password must be different from previous used passwords',
                  style: TextStyle(
                    color: Color(0xFF5A5A5A),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.17,
                  ),
                ),
                
                const SizedBox(height: 40),
                
                // New Password input field
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x20000000),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 16.0, right: 8.0),
                        child: Icon(
                          Icons.lock_outlined,
                          color: Color(0xFF9E9E9E),
                          size: 22,
                        ),
                      ),
                      hintText: 'Enter New Password',
                      hintStyle: TextStyle(
                        color: Color(0xFFD2CCCC),
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                
                const SizedBox(height: 20),
                
                // Retype Password input field
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x20000000),
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 16.0, right: 8.0),
                        child: Icon(
                          Icons.lock_outlined,
                          color: Color(0xFF9E9E9E),
                          size: 22,
                        ),
                      ),
                      hintText: 'Retype Password',
                      hintStyle: TextStyle(
                        color: Color(0xFFD2CCCC),
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                
                const SizedBox(height: 30),
                
                // Reset Password button
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF9ED99E),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x40000000),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'Reset Password',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                
                const SizedBox(height: 350), // Spacer to push indicator to bottom
                
                // Bottom indicator
                Center(
                  child: Container(
                    width: 134,
                    height: 5,
                    margin: const EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.circular(2.5),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
