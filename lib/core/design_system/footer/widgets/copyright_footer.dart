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
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: '© ${DateTime.now().year} Alper Efe Şahin | via Flutter',
            color: grey,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          RichText(
            text: TextSpan(
              text: 'All content of this website is distributed under the ',
              style: GoogleFonts.robotoCondensed(
                color: grey,
                fontSize: 16,
              ),
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => launchUrlInWeb(
                          isWebsite: true,
                          websitePath:
                              'https://creativecommons.org/licenses/by-nc/4.0/deed.en',
                        ),
                  text: 'CC BY-NC license',
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
        ],
      ),
    );
  }
}
