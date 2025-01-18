import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StayInTouchSection extends StatelessWidget with LaunchMixin {
  final bool isMobile;

  const StayInTouchSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    const String stayInTouchText = "Stay in touch";
    const String stayInTouchSubText =
        "Don't miss out on my latest posts and projects! Hit me up on Twitter to stay connected, ask questions, or just chat about anything!";
    const String followMeText = "Follow me";
    const String xWebsitePath = "https://x.com/alperefesahin";

    return Container(
      padding: const EdgeInsets.all(32),
      margin: const EdgeInsets.only(top: 120),
      decoration: BoxDecoration(color: lightBlue, borderRadius: BorderRadius.circular(12)),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(text: stayInTouchText, fontSize: 32, fontWeight: FontWeight.w800),
                const SizedBox(height: 12),
                const CustomText(text: stayInTouchSubText, fontSize: 20, color: blackWithOpacity87),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => launchWebsite(websitePath: xWebsitePath),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: black,
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 8,
                      children: [
                        FaIcon(FontAwesomeIcons.xTwitter, size: 18, color: white),
                        CustomText(text: followMeText, color: white),
                      ],
                    ),
                  ),
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: stayInTouchText, fontSize: 32, fontWeight: FontWeight.w800),
                      SizedBox(height: 12),
                      CustomText(text: stayInTouchSubText, fontSize: 20, color: blackWithOpacity87),
                      SizedBox(height: 24),
                    ],
                  ),
                ),
                const SizedBox(width: 24),
                ElevatedButton(
                  onPressed: () => launchWebsite(websitePath: xWebsitePath),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: black,
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 8,
                    children: [
                      FaIcon(FontAwesomeIcons.xTwitter, size: 18, color: white),
                      CustomText(text: followMeText, color: white),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
