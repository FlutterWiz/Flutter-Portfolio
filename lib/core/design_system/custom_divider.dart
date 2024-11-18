import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 120),
      child: Divider(
        color: dividerColor,
        thickness: 1.5,
      ),
    );
  }
}
