import 'package:facebook_assignment/core/app_colors.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool obscurePassword = true;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Image.asset(
                    'assets/images/facebook-svgrepo-com (1) 1 (1).png',
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(height: 62),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      hintText: 'Mobile Number or Email Address',
                      filled: true,
                      fillColor: Colors.white10,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF898F9C)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is required';
                      }
        
                      final emailRegex = RegExp(
                        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                      );
        
                      if (!emailRegex.hasMatch(value)) {
                        return 'Invalid email format';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: obscurePassword,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
        
                    maxLength: 6,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: AppColors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF898F9C)),
        
                        borderRadius: BorderRadius.circular(16),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscurePassword = !obscurePassword;
                          });
                        },
                        icon: Image.asset(
                          'assets/images/Subtract.png',
                          width: 30,
                          height: 40,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      }
        
                      final passwordRegex = RegExp(
                        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).{8,}$',
                      );
        
                      if (!passwordRegex.hasMatch(value)) {
                        return 'Password must contain uppercase, lowercase, number and special character';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(353, 50),
                      backgroundColor: AppColors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      foregroundColor: const Color(0xFFFFFFFF),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      }
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF898F9C),
                      ),
                    ),
                  ),
                 SizedBox(
                   height: 150,
                 ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Create New Account'),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      fixedSize: Size(353, 50),
                      backgroundColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      foregroundColor: AppColors.blue,
                      side: BorderSide(color: AppColors.blue),
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.asset('assets/images/Meta Logo (1).png'),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
