import 'package:alperefesahin_dev/features/about/about_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alper Efe Şahin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.w600,
            color: Colors.black,
            height: 1.1,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            color: Colors.black87,
            height: 1.5,
          ),
        ),
      ),
      home: const AboutPage(),
    );
  }
}
