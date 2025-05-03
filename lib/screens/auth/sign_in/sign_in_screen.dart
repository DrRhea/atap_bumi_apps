import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
        color: const Color(0xFFA2D7A2), // Light green background color
        child: Column(
          children: [
            // Reduced status bar space for better top spacing
            const SizedBox(height: 80), // Adjusted from 100 to 80
            
            // Login Title
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  'Log In',
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
            
            const SizedBox(height: 8), // Reduced from 16 to 8
            
            // Don't have an account text
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontFamily: 'Clash Grotesk',
                        ),
                      ),
                      TextSpan(
                        text: "sign up",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFFA06712), // Brown color for sign up
                          fontFamily: 'Clash Grotesk',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 30), // Reduced from 50 to 30
            
            // White rounded container for form
            Expanded(
              flex: 5,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30), // Reduced from 50 to 30
                      
                      // Email Field with custom SVG icon
                      GestureDetector(
                        onTap: () {
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
                                blurRadius: 5, // Increased for better shadow
                                offset: const Offset(0, 2),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: buildSvgIcon(
                                  'assets/icon/EMAIL.svg', 
                                  Icons.email
                                ),
                              ),
                              const SizedBox(width: 15),
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
                                blurRadius: 5, // Increased for better shadow
                                offset: const Offset(0, 2),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: buildSvgIcon(
                                  'assets/icon/PASSWORD.svg', 
                                  Icons.lock
                                ),
                              ),
                              const SizedBox(width: 15),
                              Text(
                                'Password',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 16,
                                  fontFamily: 'Clash Grotesk',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 10), // Reduced from 15 to 10
                      
                      // Forgot Password
                      GestureDetector(
                        onTap: () {
                          debugPrint('Forgot password tapped');
                        },
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              decoration: TextDecoration.underline,
                              fontFamily: 'Clash Grotesk',
                            ),
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 30), // Reduced from 40 to 30
                      
                      // Sign In Button
                      GestureDetector(
                        onTap: () {
                          debugPrint('Sign in button tapped');
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFA2D7A2),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 5, // Increased for better shadow
                                offset: const Offset(0, 2),
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              'Sign In',
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
                      
                      const Spacer(flex: 1),
                      
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
                      
                      const SizedBox(height: 20), // Reduced from 30 to 20
                      
                      // Google button with custom SVG icon
                      GestureDetector(
                        onTap: () {
                          debugPrint('Google sign-in button tapped');
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.15), // Adjusted shadow
                                blurRadius: 8, // Increased blur
                                offset: const Offset(0, 4), // Increased offset
                                spreadRadius: 1,
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
                      
                      const SizedBox(height: 30), // Reduced from 50 to 30
                    ],
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