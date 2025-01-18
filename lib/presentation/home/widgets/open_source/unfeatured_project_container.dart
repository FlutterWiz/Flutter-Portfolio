import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/open_source/ui_model/unfeatured_project_model.dart';
import 'package:flutter/material.dart';

class UnfeaturedProjectContainer extends StatelessWidget {
  const UnfeaturedProjectContainer({super.key, required this.unfeaturedProjectModel});

  final UnfeaturedProjectModel unfeaturedProjectModel;

  @override
  Widget build(BuildContext context) {
    final bool isMobile = unfeaturedProjectModel.isMobile;

    final String title = unfeaturedProjectModel.title;
    final String description = unfeaturedProjectModel.description;

    final Size size = MediaQuery.of(context).size;

    final double containerWidth = isMobile ? double.infinity : size.width / 6;
    const double containerHeight = 300;

    return Container(
      width: containerWidth,
      height: containerHeight,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [transitionWhite, white],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 16,
        children: [
          CustomText(
            text: title,
            fontSize: isMobile ? 24 : 20,
            height: 1.2,
            fontWeight: FontWeight.w800,
          ),
          CustomText(
            text: description,
            fontSize: isMobile ? 20 : 16,
            color: blackWithOpacity87,
            height: 1.6,
          ),
        ],
      ),
    );
  }
}
