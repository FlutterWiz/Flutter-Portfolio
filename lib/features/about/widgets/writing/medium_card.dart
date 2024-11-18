import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:flutter/material.dart';

class MediumCard extends StatelessWidget {
  final Widget imageWidget;
  final String category;
  final String date;
  final String title;
  final bool isMobile;
  final VoidCallback onTap;

  const MediumCard({
    super.key,
    required this.imageWidget,
    required this.category,
    required this.date,
    required this.title,
    required this.isMobile,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return InkWell(
      highlightColor: transparent,
      splashColor: transparent,
      hoverColor: transparent,
      onTap: onTap,
      child: SizedBox(
        width: isMobile ? null : size.width / 4.250,
        height: 475,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: isMobile ? null : 360,
              height: 360,
              child: Center(child: imageWidget),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                CustomText(
                  text: category,
                  color: blackWithOpacity87,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                const SizedBox(width: 12),
                Container(
                  width: 4,
                  height: 4,
                  decoration: const BoxDecoration(
                    color: blackWithOpacity87,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 12),
                CustomText(
                  text: date,
                  color: blackWithOpacity87,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            Container(
              width: 360,
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: CustomText(
                text: title,
                fontSize: 24,
                fontWeight: FontWeight.w800,
                height: 1.2,
                color: black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
