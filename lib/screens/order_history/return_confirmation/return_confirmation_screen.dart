import 'package:flutter/material.dart';

class ReturnConfirmationScreen extends StatelessWidget {
  const ReturnConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const ReturnConfirmation(),
    );
  }
}

class ReturnConfirmation extends StatelessWidget {
  const ReturnConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 20),
                const Text(
                  'Return Confirmation',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: 'Alexandria',
                    fontWeight: FontWeight.w800,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: screenSize.height * 0.05),
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: screenSize.width * 0.65,
                        height: screenSize.width * 0.65,
                        decoration: const ShapeDecoration(
                          color: Color(0xFFA2D7A2),
                          shape: OvalBorder(),
                        ),
                      ),
                      // Check mark icon in white
                      Icon(
                        Icons.check,
                        size: screenSize.width * 0.4,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenSize.height * 0.05),
                const Text(
                  'Succesfull !',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Your return has been confirmed.\nOrder Completed Successfully.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Alexandria',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.08),
                const Text(
                  'Thanks for\nrenting with us !',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Arial',
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.08),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your navigation logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFA2D7A2),
                      minimumSize: Size(screenSize.width * 0.5, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Done',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Alexandria',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}