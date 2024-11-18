import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/features/about/about_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alper Efe Sahin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: blue),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.w600,
            color: black,
            height: 1.1,
          ),
          bodyLarge: TextStyle(
            fontSize: 18,
            color: blackWithOpacity87,
            height: 1.5,
          ),
        ),
      ),
      home: const AboutPage(),
    );
  }
}
