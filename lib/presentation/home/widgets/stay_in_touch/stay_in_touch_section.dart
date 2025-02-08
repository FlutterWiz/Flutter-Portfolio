import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StayInTouchSection extends StatelessWidget with LaunchMixin {
  final bool isMobile;

  const StayInTouchSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    final String stayInTouchText = AppLocalizations.of(context)?.stayInTouch ?? '';
    final String stayInTouchSubText = AppLocalizations.of(context)?.stayInTouchSubText ?? '';
    final String followMeText = AppLocalizations.of(context)?.followMe ?? '';
    const String xWebsitePath = 'https://x.com/FlutterWiz';

    return Container(
      padding: const EdgeInsets.all(32),
      margin: const EdgeInsets.only(top: 120),
      decoration: BoxDecoration(color: lightBlue, borderRadius: BorderRadius.circular(12)),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: stayInTouchText, fontSize: 32, fontWeight: FontWeight.w800),
                const SizedBox(height: 12),
                CustomText(text: stayInTouchSubText, color: blackWithOpacity87),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 8,
                      children: [
                        const FaIcon(FontAwesomeIcons.xTwitter, size: 18, color: white),
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
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: stayInTouchText, fontSize: 32, fontWeight: FontWeight.w800),
                      const SizedBox(height: 12),
                      CustomText(text: stayInTouchSubText, color: blackWithOpacity87),
                      const SizedBox(height: 24),
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
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 8,
                    children: [
                      const FaIcon(FontAwesomeIcons.xTwitter, size: 18, color: white),
                      CustomText(text: followMeText, color: white),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
