import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  // Helper method to build svg icon with fallback
  Widget buildSvgIcon(String assetName, IconData fallbackIcon) {
    return SvgPicture.asset(
      assetName,
      width: 24,
      height: 24,
      colorFilter: ColorFilter.mode(
        Colors.grey[400] ?? Colors.grey,
        BlendMode.srcIn,
      ),
      placeholderBuilder: (BuildContext context) {
        debugPrint('SVG fallback used for: $assetName');
        return Icon(
          fallbackIcon,
          size: 24,
          color: Colors.grey[400],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFB5E0B5), // Light mint green background
        child: Column(
          children: [
            // Status bar space - increased for better spacing from top
            const SizedBox(height: 60),
            
            // Create Account Title
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                    letterSpacing: -0.2,
                    fontFamily: 'Alexandria',
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 16),
            
            // Already have an account text
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontFamily: 'Clash Grotesk',
                        ),
                      ),
                      TextSpan(
                        text: "sign in",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFA06712), // Brown color for sign in
                          fontFamily: 'Clash Grotesk',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 50), // Increased for better spacing
            
            // White rounded container for form
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
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 50), // Increased spacing inside white container
                        
                        // Name Field with custom SVG icon
                        GestureDetector(
                          onTap: () {
                            // Handle name field tap
                            debugPrint('Name field tapped');
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                // SVG icon part with padding
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: buildSvgIcon(
                                    'assets/icon/PROFILE-2.svg', 
                                    Icons.person
                                  ),
                                ),
                                const SizedBox(width: 15),
                                // Name text
                                Text(
                                  'Name',
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 16,
                                    fontFamily: 'Clash Grotesk',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                        const SizedBox(height: 20),
                        
                        // Phone Field with custom SVG icon
                        GestureDetector(
                          onTap: () {
                            // Handle phone field tap
                            debugPrint('Phone field tapped');
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                // SVG icon part with padding
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: buildSvgIcon(
                                    'assets/icon/PHONE.svg', 
                                    Icons.phone
                                  ),
                                ),
                                const SizedBox(width: 15),
                                // Phone text
                                Text(
                                  'Telephone',
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 16,
                                    fontFamily: 'Clash Grotesk',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                        const SizedBox(height: 20),
                        
                        // Email Field with custom SVG icon
                        GestureDetector(
                          onTap: () {
                            // Handle email field tap
                            debugPrint('Email field tapped');
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                // SVG icon part with padding
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: buildSvgIcon(
                                    'assets/icon/EMAIL.svg', 
                                    Icons.email
                                  ),
                                ),
                                const SizedBox(width: 15),
                                // Email text
                                Text(
                                  'Email',
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 16,
                                    fontFamily: 'Clash Grotesk',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                        const SizedBox(height: 20),
                        
                        // Password Field with custom SVG icon
                        GestureDetector(
                          onTap: () {
                            // Handle password field tap
                            debugPrint('Password field tapped');
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                // SVG icon part with padding
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: buildSvgIcon(
                                    'assets/icon/PASSWORD.svg', 
                                    Icons.lock
                                  ),
                                ),
                                const SizedBox(width: 15),
                                // Password text
                                Text(
                                  'Password',
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 16,
                                    fontFamily: 'Clash Grotesk',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                        const SizedBox(height: 25),
                        
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
                            const SizedBox(width: 10),
                            const Text(
                              'Agree with Terms & conditions',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Clash Grotesk',
                                color: Colors.black87,
                              ),
                            ),
                          ],
                        ),
                        
                        const SizedBox(height: 40),
                        
                        // Sign Up Button
                        GestureDetector(
                          onTap: () {
                            // Handle sign up logic
                            debugPrint('Sign up button tapped');
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xFFB5E0B5), // Same green as background
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Alexandria',
                                ),
                              ),
                            ),
                          ),
                        ),
                        
                        const SizedBox(height: 30),
                        
                        // Or divider
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 1,
                                color: Colors.grey[300],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                'Or',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 16,
                                  fontFamily: 'Clash Grotesk',
                                  fontWeight: FontWeight.w400,
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
                        
                        const SizedBox(height: 30),
                        
                        // Google button with custom SVG icon
                        GestureDetector(
                          onTap: () {
                            // Handle Google sign-up
                            debugPrint('Google sign-up button tapped');
                          },
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 2,
                                  offset: const Offset(0, 1),
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Custom Google SVG icon with fallback
                                SvgPicture.asset(
                                  'assets/icon/GOOGLE.svg',
                                  width: 24,
                                  height: 24,
                                  placeholderBuilder: (context) => Icon(
                                    Icons.g_mobiledata,
                                    size: 24,
                                    color: Colors.blue,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  'Continue with Google',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontFamily: 'Alexandria',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        
                        const SizedBox(height: 50), // Increased bottom spacing
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}