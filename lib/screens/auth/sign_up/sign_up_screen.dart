import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB5E0B5), // Light mint green background matching the image
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header section with green background
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 60.0, bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title section
                    const Text(
                      'Create Account',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    
                    // Sign in text row
                    Row(
                      children: [
                        const Text(
                          'Already have an account? ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Handle sign in navigation
                          },
                          child: const Text(
                            'sign in',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFE67E22), // Orange color as in the image
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
              // White container with form elements
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, -3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      
                      // Name input field
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F5), // Light gray background
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.03),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 15),
                            Icon(Icons.person_outline, color: Colors.grey[600], size: 22),
                            const SizedBox(width: 10),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Name',
                                  hintStyle: TextStyle(color: Colors.grey[400], fontSize: 16),
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.symmetric(vertical: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      const SizedBox(height: 16),
                      
                      // Telephone input field
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F5), // Light gray background
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.03),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 15),
                            Icon(Icons.phone_outlined, color: Colors.grey[600], size: 22),
                            const SizedBox(width: 10),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Telephone',
                                  hintStyle: TextStyle(color: Colors.grey[400], fontSize: 16),
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.symmetric(vertical: 16),
                                ),
                                keyboardType: TextInputType.phone,
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      const SizedBox(height: 16),
                      
                      // Email input field
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F5), // Light gray background
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.03),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 15),
                            Icon(Icons.email_outlined, color: Colors.grey[600], size: 22),
                            const SizedBox(width: 10),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: TextStyle(color: Colors.grey[400], fontSize: 16),
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.symmetric(vertical: 16),
                                ),
                                keyboardType: TextInputType.emailAddress,
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      const SizedBox(height: 16),
                      
                      // Password input field
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF5F5F5), // Light gray background
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.03),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 15),
                            Icon(Icons.lock_outline, color: Colors.grey[600], size: 22),
                            const SizedBox(width: 10),
                            Expanded(
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(color: Colors.grey[400], fontSize: 16),
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.symmetric(vertical: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      const SizedBox(height: 20),
                      
                      // Terms and conditions checkbox
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: Checkbox(
                              value: false,
                              onChanged: (bool? value) {
                                // Handle checkbox state
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                              side: BorderSide(
                                color: Colors.grey[400]!,
                                width: 1.5,
                              ),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Agree with Terms & conditions',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 24),
                      
                      // Sign Up button
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFF9AD99A), // Matches green button in image
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 24),
                      
                      // Or divider
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 1,
                              color: Colors.grey[300],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Or',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 1,
                              color: Colors.grey[300],
                            ),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 24),
                      
                      // Google sign up button
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.grey[200]!),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 6,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Google icon
                            Container(
                              width: 24,
                              height: 24,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Text(
                                  "G",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              'Continue with Google',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                      const SizedBox(height: 30),
                      
                      // Small line at bottom
                      Container(
                        width: 60,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
