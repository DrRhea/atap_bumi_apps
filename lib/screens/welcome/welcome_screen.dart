import 'package:flutter/material.dart';

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
              Text(
                'ATAP BUMI',
                style: TextStyle(
                  color: Color(0xFF8BC34A),
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(height: 20),
              // Placeholder for logo image
              Container(
                height: 120,
                width: 150,
                // Uncomment and update this section when you have the logo ready
                // child: Image.asset(
                //   'assets/images/logo.png',
                //   fit: BoxFit.contain,
                // ),
              ),
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
              color: Color(0xFFA2D7A2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Text(
                    'Welcome!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 285,
                    child: Text(
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
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center, 
                    children: [
                      // Sign In button
                      Container(
                        width: 130, 
                        height: 50, 
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16, 
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
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
                        child: Center(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
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