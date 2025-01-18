import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CopyrightFooter extends StatelessWidget with LaunchMixin {
  const CopyrightFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final double copyrightBoxWidth = size.width / 2;

    final String copyrightText =
        "© ${DateTime.now().year} Alper Efe Şahin\nMade with Love and Flutter";
    const String contentDistributedText = "All content of this website is distributed under the ";
    const String licenseText = "CC BY-NC license";
    const String uiInspiredText = "UI inspired by ";
    const String artemNameText = "Artem";
    const String licenseWebsitePath = "https://creativecommons.org/licenses/by-nc/4.0/deed.en";
    const String inspiredWebsitePath = "https://kettanaito.com";

    return SizedBox(
      width: copyrightBoxWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: copyrightText, color: grey, fontSize: 16, fontWeight: FontWeight.w600),
          RichText(
            text: TextSpan(
              text: contentDistributedText,
              style: GoogleFonts.robotoCondensed(color: grey, fontSize: 16),
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => launchWebsite(websitePath: licenseWebsitePath),
                  text: licenseText,
                  style: GoogleFonts.robotoCondensed(
                    decoration: TextDecoration.underline,
                    color: black,
                    fontSize: 16,
                  ),
                ),
                TextSpan(
                  text: '.',
                  style: GoogleFonts.robotoCondensed(
                    color: grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              text: uiInspiredText,
              style: GoogleFonts.robotoCondensed(color: grey, fontSize: 16),
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => launchWebsite(websitePath: inspiredWebsitePath),
                  text: artemNameText,
                  style: GoogleFonts.robotoCondensed(
                    decoration: TextDecoration.underline,
                    color: black,
                    fontSize: 16,
                  ),
                ),
                TextSpan(
                  text: '.',
                  style: GoogleFonts.robotoCondensed(color: grey, fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
