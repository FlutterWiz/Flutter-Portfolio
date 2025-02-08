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
      'YouTube': 'https://youtube.com/@FlutterWiz/',
      'Twitter (X)': 'https://x.com/FlutterWiz/',
      'Medium': 'https://medium.com/@FlutterWiz/',
    };

    return Column(
      children: socialMap.entries.map((entry) {
        final String socialName = entry.key;
        final String socialLink = entry.value;

        return Padding(
          padding: EdgeInsets.only(top: socialName == socialMap.keys.first ? 0 : 8),
          child: InkWell(
            highlightColor: transparent,
            splashColor: transparent,
            hoverColor: transparent,
            onTap: () => launchWebsite(websitePath: socialLink),
            child: CustomText(text: socialName, color: grey, fontSize: 16),
          ),
        );
      }).toList(),
    );
  }
}
