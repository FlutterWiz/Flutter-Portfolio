import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIconsRow extends StatelessWidget {
  const SocialIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SocialIcons(onPressed: () {}, icon: FontAwesomeIcons.linkedin),
        SocialIcons(onPressed: () {}, icon: FontAwesomeIcons.youtube),
        SocialIcons(onPressed: () {}, icon: FontAwesomeIcons.medium),
        SocialIcons(onPressed: () {}, icon: FontAwesomeIcons.xTwitter),
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
