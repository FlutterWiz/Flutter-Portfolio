import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/writing/ui_model/medium_card_model.dart';
import 'package:flutter/material.dart';

class MediumCard extends StatelessWidget with LaunchMixin {
  final bool isMobile;
  final MediumCardModel mediumCardModel;

  const MediumCard({super.key, required this.isMobile, required this.mediumCardModel});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return InkWell(
      highlightColor: transparent,
      splashColor: transparent,
      hoverColor: transparent,
      onTap: () => launchWebsite(websitePath: mediumCardModel.websitePath),
      child: SizedBox(
        width: isMobile ? null : size.width / 4.8,
        height: 412,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: isMobile ? null : 300,
              height: 300,
              child: Center(child: _ArticleImage(assetPath: mediumCardModel.imagePath)),
            ),
            const SizedBox(height: 24),
            Row(
              spacing: 12,
              children: [
                CustomText(
                  text: mediumCardModel.category,
                  color: blackWithOpacity87,
                  fontSize: 16,
                ),
                Container(
                  width: 4,
                  height: 4,
                  decoration: const BoxDecoration(color: blackWithOpacity87, shape: BoxShape.circle),
                ),
                CustomText(
                  text: mediumCardModel.date,
                  color: blackWithOpacity87,
                  fontSize: 16,
                ),
              ],
            ),
            Container(
              width: 360,
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: CustomText(
                text: mediumCardModel.title,
                fontSize: 24,
                fontWeight: FontWeight.w800,
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ArticleImage extends StatelessWidget {
  final String assetPath;

  const _ArticleImage({required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(image: AssetImage(assetPath), fit: BoxFit.cover),
      ),
    );
  }
}
