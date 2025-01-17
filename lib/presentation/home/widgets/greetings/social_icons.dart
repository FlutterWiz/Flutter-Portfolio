import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIconsRow extends StatelessWidget {
  const SocialIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SocialIcons(
          websitePath: "https://linkedin.com/in/alperefesahin/",
          icon: FontAwesomeIcons.linkedin,
        ),
        SocialIcons(
          websitePath: "https://youtube.com/@alperefesahin",
          icon: FontAwesomeIcons.youtube,
        ),
        SocialIcons(
          websitePath: "https://medium.com/@alperefesahin",
          icon: FontAwesomeIcons.medium,
        ),
        SocialIcons(
          websitePath: "https://x.com/alperefesahin",
          icon: FontAwesomeIcons.xTwitter,
        ),
      ],
    );
  }
}

class SocialIcons extends StatelessWidget with LaunchMixin {
  final String websitePath;
  final IconData icon;

  const SocialIcons({super.key, required this.websitePath, required this.icon});

  @override
  Widget build(BuildContext context) {
    const double iconSize = 36;

    return Padding(
      padding: const EdgeInsets.only(right: 28),
      child: IconButton(
        onPressed: () => launchWebsite(websitePath: websitePath),
        icon: FaIcon(icon),
        iconSize: iconSize,
      ),
    );
  }
}
