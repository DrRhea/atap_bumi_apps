import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // White background
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
        ),
        
        // Logo
        Positioned(
          top: 200,
          left: 0,
          right: 0,
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/icon/LOGO-1.svg',
                height: 160, // Increased from 120 to 160
                width: 200,  // Increased from 150 to 200
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),          
        // Green bottom section
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: 310,
            decoration: BoxDecoration(
              color: const Color(0xFFA2D7A2),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  const Text(
                    'Welcome!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 285,
                    child: const Text(
                      'Get high-quality camping equipment when you need it, where you need it.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.3,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Sign In button
                      Container(
                        width: 130,
                        height: 50,
                        margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                      // Sign Up button
                      Container(
                        width: 130,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  // No bottom indicator line - removed as per instruction
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}