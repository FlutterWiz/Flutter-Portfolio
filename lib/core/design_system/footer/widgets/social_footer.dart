import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:flutter/material.dart';

class SocialFooter extends StatelessWidget with LaunchMixin {
  const SocialFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> socialMap = {
      'LinkedIn': 'https://linkedin.com/in/alperefesahin/',
      'YouTube': 'https://youtube.com/@alperefesahin/',
      'Twitter (X)': 'https://x.com/alperefesahin/',
      'Medium': 'https://medium.com/@alperefesahin/',
    };

    return Column(
      children: socialMap.entries.map((entry) {
        final socialName = entry.key;
        final socialLink = entry.value;

        return Padding(
          padding: const EdgeInsets.only(top: 8),
          child: InkWell(
            highlightColor: transparent,
            splashColor: transparent,
            hoverColor: transparent,
            onTap: () => launchUrlInWeb(
              isWebsite: true,
              websitePath: socialLink,
            ),
            child: CustomText(
              text: socialName,
              color: grey,
              fontSize: 16,
            ),
          ),
        );
      }).toList(),
    );
  }
}
