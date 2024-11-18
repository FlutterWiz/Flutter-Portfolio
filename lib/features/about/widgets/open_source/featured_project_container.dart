import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
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
  });

  final bool isMobile;
  final bool isSponsored;
  final List<Color> gradientColors;
  final Color shadowColor;
  final Color textColor;
  final String imagePath;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isMobile ? null : 550,
      height: 300,
      padding: const EdgeInsets.all(48),
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
            imagePath: imagePath,
            shadowColor: shadowColor,
          ),
          const SizedBox(width: 24),
          Expanded(
            child: _ProjectContent(
              title: title,
              description: description,
              textColor: textColor,
              isSponsored: isSponsored,
            ),
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
  });

  final String imagePath;
  final Color shadowColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: black,
        image: DecorationImage(
          image: AssetImage(imagePath),
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
  });

  final String title;
  final String description;
  final Color textColor;
  final bool isSponsored;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: title,
          fontSize: 24,
          height: 1.2,
          fontWeight: FontWeight.w800,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: CustomText(
            text: description,
            color: textColor,
            height: 1.6,
          ),
        ),
        _ProjectActions(
          isSponsored: isSponsored,
        ),
      ],
    );
  }
}

class _ProjectActions extends StatelessWidget {
  const _ProjectActions({
    required this.isSponsored,
  });

  final bool isSponsored;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            backgroundColor: black,
            padding: const EdgeInsets.symmetric(horizontal: 32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          icon: const Row(
            children: [
              FaIcon(
                FontAwesomeIcons.github,
                color: white,
                size: 18,
              ),
              SizedBox(width: 8),
              CustomText(
                text: 'GitHub',
                color: white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
        if (isSponsored)
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(
              "Sponsored!",
              style: GoogleFonts.robotoCondensed(
                fontSize: 20,
                decoration: TextDecoration.underline,
                decorationColor: black,
                decorationThickness: 1.5,
              ),
            ),
          ),
      ],
    );
  }
}
