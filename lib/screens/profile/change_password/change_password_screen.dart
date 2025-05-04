import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Added import for SVG

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Alexandria', // Changed to match EditProfileScreen
        colorScheme: ColorScheme.light(
          primary: const Color(0xFFA2D7A2), // Updated to match EditProfileScreen
          secondary: const Color(0xFFA2D7A2),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFA2D7A2), // Updated to match
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 0, // Removed elevation to match the flat design
          ),
        ),
      ),
      home: const ChangePasswordPage(),
    );
  }
}

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _currentPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _retypePasswordController = TextEditingController();
  
  bool _isLoading = false;
  String? _passwordError;

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _retypePasswordController.dispose();
    super.dispose();
  }

  bool _validatePassword(String password) {
    // Password must have at least 8 characters
    if (password.length < 8) {
      setState(() {
        _passwordError = 'Password must be at least 8 characters long';
      });
      return false;
    }
    
    // Password must have at least one uppercase letter
    if (!password.contains(RegExp(r'[A-Z]'))) {
      setState(() {
        _passwordError = 'Password must contain at least one uppercase letter';
      });
      return false;
    }
    
    // Password must have at least one number
    if (!password.contains(RegExp(r'[0-9]'))) {
      setState(() {
        _passwordError = 'Password must contain at least one number';
      });
      return false;
    }
    
    // Password must have at least one special character
    if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      setState(() {
        _passwordError = 'Password must contain at least one special character';
      });
      return false;
    }
    
    setState(() {
      _passwordError = null;
    });
    return true;
  }

  void _changePassword() async {
    if (_formKey.currentState!.validate()) {
      // Validate if new password matches confirmation
      if (_newPasswordController.text != _retypePasswordController.text) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('New password and confirmation do not match'),
            backgroundColor: Colors.red,
          ),
        );
        return;
      }
      
      // Validate if new password is different from old password
      if (_currentPasswordController.text == _newPasswordController.text) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('New password must be different from current password'),
            backgroundColor: Colors.red,
          ),
        );
        return;
      }
      
      // Validate password strength
      if (!_validatePassword(_newPasswordController.text)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(_passwordError ?? 'Password does not meet requirements'),
            backgroundColor: Colors.red,
          ),
        );
        return;
      }
      
      // Simulasi proses ganti password
      setState(() {
        _isLoading = true;
      });
      
      // Simulasi API call dengan delay
      await Future.delayed(const Duration(seconds: 2));
      
      setState(() {
        _isLoading = false;
      });
      
      // Show success message
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Password successfully changed!'),
            backgroundColor: Color(0xFFA2D7A2), // Updated color
          ),
        );
        
        // Reset form setelah berhasil
        _currentPasswordController.clear();
        _newPasswordController.clear();
        _retypePasswordController.clear();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final horizontalPadding = screenSize.width * 0.08;
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Create New Password',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Your new password must be different from previously used passwords and meet security requirements.',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF5A5A5A),
                    ),
                  ),
                  const SizedBox(height: 30),
                  
                  // Password Requirements
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEDF7ED),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFCCE8CC)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Password Requirements:',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF6FAE6F),
                          ),
                        ),
                        SizedBox(height: 8),
                        PasswordRequirement(text: 'Minimum 8 characters'),
                        PasswordRequirement(text: 'At least one uppercase letter (A-Z)'),
                        PasswordRequirement(text: 'At least one number (0-9)'),
                        PasswordRequirement(text: 'At least one special character (!@#\$%^&*)'),
                      ],
                    ),
                  ),
                  
                  const SizedBox(height: 30),
                  
                  // Current Password Field
                  PasswordInputField(
                    controller: _currentPasswordController,
                    hintText: 'Current Password',
                    svgPath: 'assets/icon/PASSWORD.svg', // Changed to use custom SVG
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Current password cannot be empty';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  
                  // New Password Field
                  PasswordInputField(
                    controller: _newPasswordController,
                    hintText: 'New Password',
                    svgPath: 'assets/icon/PASSWORD.svg', // Changed to use custom SVG
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'New password cannot be empty';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  
                  // Retype Password Field
                  PasswordInputField(
                    controller: _retypePasswordController,
                    hintText: 'Confirm New Password',
                    svgPath: 'assets/icon/PASSWORD.svg', // Changed to use custom SVG
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password confirmation cannot be empty';
                      }
                      if (value != _newPasswordController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  
                  // Forgot Password Link
                  GestureDetector(
                    onTap: () {
                      // Navigate to forgot password page
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFA2D7A2), // Updated color
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  
                  // Updated Change Password Button to match EditProfileScreen style
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50, // Fixed height to match
                      child: ElevatedButton(
                        onPressed: _isLoading ? null : _changePassword,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFA2D7A2), // Updated color
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 0, // Removed elevation
                          disabledBackgroundColor: const Color(0xFFA2D7A2).withOpacity(0.5),
                        ),
                        child: _isLoading
                            ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                  strokeWidth: 3,
                                ),
                              )
                            : const Text(
                                'Change Password',
                                style: TextStyle(
                                  fontSize: 17, // Updated to match
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Alexandria', // Added font family
                                ),
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PasswordRequirement extends StatelessWidget {
  final String text;
  
  const PasswordRequirement({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        children: [
          const Icon(
            Icons.check_circle_outline,
            size: 16,
            color: Color(0xFF6FAE6F),
          ),
          const SizedBox(width: 8),
          Text(
            text,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF5A5A5A),
            ),
          ),
        ],
      ),
    );
  }
}

class PasswordInputField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String svgPath; // Changed to use SVG path instead of IconData
  final String? Function(String?)? validator;

  const PasswordInputField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.svgPath, // Updated parameter
    this.validator,
  });

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _obscureText,
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          color: Color(0xFFBDBDBD),
          fontSize: 16,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            widget.svgPath,
            width: 24,
            height: 24,
            colorFilter: const ColorFilter.mode(
              Color(0xFF757575),
              BlendMode.srcIn,
            ),
          ),
        ),
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
            color: const Color(0xFF757575),
          ),
        ),
        filled: true,
        fillColor: const Color(0xFFF5F5F5),
        contentPadding: const EdgeInsets.symmetric(vertical: 15),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0xFFA2D7A2), // Updated color
            width: 1.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
        ),
        errorStyle: const TextStyle(
          color: Colors.red,
          fontSize: 12,
        ),
      ),
    );
  }
}