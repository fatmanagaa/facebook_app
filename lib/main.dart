import 'package:facebook_assignment/core/app_routes.dart';
import 'package:facebook_assignment/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.loginScreen,
      routes: {
        AppRoutes.loginScreen: (context) => LoginScreen(),

      },

    );
  }
}
