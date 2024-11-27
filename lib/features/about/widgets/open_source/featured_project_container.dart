import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedProjectContainer extends StatelessWidget {
  const FeaturedProjectContainer({
    super.key,
    required this.isMobile,
    required this.isSponsored,
    required this.gradientColors,
    required this.shadowColor,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.textColor,
    required this.onPressed,
  });

  final bool isMobile;
  final bool isSponsored;
  final List<Color> gradientColors;
  final Color shadowColor;
  final Color textColor;
  final String imagePath;
  final String title;
  final String description;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isMobile ? null : 375,
      height: isMobile ? 300 : 225,
      padding: EdgeInsets.all(isMobile ? 48 : 36),
      margin: const EdgeInsets.only(bottom: 48),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: gradientColors,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ProjectImage(
            isMobile: isMobile,
            imagePath: imagePath,
            shadowColor: shadowColor,
          ),
          const SizedBox(width: 24),
          _ProjectContent(
            isMobile: isMobile,
            title: title,
            description: description,
            textColor: textColor,
            isSponsored: isSponsored,
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}

class _ProjectImage extends StatelessWidget {
  const _ProjectImage({
    required this.imagePath,
    required this.shadowColor,
    required this.isMobile,
  });

  final String imagePath;
  final Color shadowColor;
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    final double imageSize = isMobile ? 50 : 36;

    return Container(
      width: imageSize,
      height: imageSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: black,
        image: DecorationImage(
          image: CachedNetworkImageProvider(imagePath),
          filterQuality: FilterQuality.high,
          fit: BoxFit.fill,
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            spreadRadius: 0,
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
    );
  }
}

class _ProjectContent extends StatelessWidget {
  const _ProjectContent({
    required this.title,
    required this.description,
    required this.textColor,
    required this.isSponsored,
    required this.onPressed,
    required this.isMobile,
  });

  final String title;
  final String description;
  final Color textColor;
  final bool isSponsored;
  final bool isMobile;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: CustomText(
              text: title,
              fontSize: isMobile ? 24 : 20,
              height: 1.2,
              fontWeight: FontWeight.w800,
            ),
          ),
          Padding(
            padding: isMobile
                ? const EdgeInsets.only(bottom: 20)
                : const EdgeInsets.symmetric(vertical: 24),
            child: CustomText(
              text: description,
              color: textColor,
              height: 1.6,
              fontSize: isMobile ? 20 : 16,
            ),
          ),
          Expanded(
            child: _ProjectActions(
              isMobile: isMobile,
              isSponsored: isSponsored,
              onPressed: onPressed,
            ),
          ),
        ],
      ),
    );
  }
}

class _ProjectActions extends StatelessWidget {
  const _ProjectActions({
    required this.isSponsored,
    required this.onPressed,
    required this.isMobile,
  });

  final bool isMobile;
  final bool isSponsored;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onPressed,
          style: IconButton.styleFrom(
            backgroundColor: black,
            padding: EdgeInsets.symmetric(horizontal: isMobile ? 32 : 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(isMobile ? 24 : 16),
            ),
          ),
          icon: Row(
            children: [
              FaIcon(
                FontAwesomeIcons.github,
                color: white,
                size: isMobile ? 18 : 12,
              ),
              const SizedBox(width: 8),
              CustomText(
                text: 'GitHub',
                color: white,
                fontSize: isMobile ? 20 : 16,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
        if (isSponsored)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                "Sponsored!",
                style: GoogleFonts.robotoCondensed(
                  fontSize: isMobile ? 20 : 16,
                  decoration: TextDecoration.underline,
                  decorationColor: black,
                  decorationThickness: 1.5,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
