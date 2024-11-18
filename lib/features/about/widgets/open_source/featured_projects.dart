import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedProjects extends StatelessWidget {
  const FeaturedProjects({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isMobile ? null : 550,
      height: 300,
      padding: const EdgeInsets.all(48),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [streamLightBlue, white],
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage("assets/stream.jpeg"),
                filterQuality: FilterQuality.high,
                fit: BoxFit.fill,
              ),
              boxShadow: const [
                BoxShadow(
                  color: streamDarkBlue,
                  spreadRadius: 0,
                  blurRadius: 15,
                  offset: Offset(0, 5)
                ),
              ],
            ),
          ),
          const SizedBox(width: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: "Flutter Social Chat",
                fontSize: 24,
                height: 1.2,
                fontWeight: FontWeight.w800,
              ),
              Container(
                width: 350,
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: const CustomText(
                  text:
                      "Hybrid, Functional, and Designed Chat App: Flutter Social Chat",
                  color: streamDarkBlueText,
                  height: 1.6,
                ),
              ),
              Row(
                children: [
                  Row(
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
                            FaIcon(FontAwesomeIcons.github,
                                color: white, size: 18),
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
                    ],
                  ),
                  const SizedBox(width: 16),
                  Text(
                    "Sponsored by Stream!",
                    style: GoogleFonts.robotoCondensed(
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                      decorationColor: black,
                      decorationThickness: 1.5,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
