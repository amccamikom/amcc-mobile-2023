import 'package:flutter/material.dart';
import 'package:libraryplus/pages/onboarding_page.dart';
import 'package:libraryplus/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => onBoarding(),
      },
    );
  }
}
