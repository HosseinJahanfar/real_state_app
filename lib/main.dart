import 'package:flutter/material.dart';
import 'package:real_state_app/screen/intro_screen.dart';
import 'package:real_state_app/screen/login_screen.dart';
import 'package:real_state_app/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}
