import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIconsRow extends StatelessWidget with LaunchMixin {
  const SocialIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SocialIcons(
          onPressed: () => launchUrlInWeb(
            isWebsite: true,
            websitePath: "https://linkedin.com/in/alperefesahin/",
          ),
          icon: FontAwesomeIcons.linkedin,
        ),
        SocialIcons(
          onPressed: () => launchUrlInWeb(
            isWebsite: true,
            websitePath: "https://youtube.com/@alperefesahin",
          ),
          icon: FontAwesomeIcons.youtube,
        ),
        SocialIcons(
          onPressed: () => launchUrlInWeb(
            isWebsite: true,
            websitePath: "https://medium.com/@alperefesahin",
          ),
          icon: FontAwesomeIcons.medium,
        ),
        SocialIcons(
          onPressed: () => launchUrlInWeb(
            isWebsite: true,
            websitePath: "https://x.com/alperefesahin",
          ),
          icon: FontAwesomeIcons.xTwitter,
        ),
      ],
    );
  }
}

class SocialIcons extends StatelessWidget {
  final Function() onPressed;
  final IconData icon;

  const SocialIcons({super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 28),
      child: IconButton(
        onPressed: onPressed,
        icon: FaIcon(icon),
        iconSize: 36,
      ),
    );
  }
}
