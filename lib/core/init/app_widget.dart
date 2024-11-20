import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/features/about/about_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'alperefesahin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: blue),
      ),
      home: const AboutPage(),
    );
  }
}
