import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const FacebookCloneApp());
}

class FacebookCloneApp extends StatelessWidget {
  const FacebookCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook Clone',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF0F2F5),
        fontFamily: 'Arial',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1877F2),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
