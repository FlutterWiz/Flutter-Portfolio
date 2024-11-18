import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  final bool isMobile;

  const FooterSection({
    super.key,
    this.isMobile = false,
  });

  @override
  Widget build(BuildContext context) {
    final navigationLinks = [
      'Home',
      'Blog',
      'RSS',
      'Discord',
      'Twitter (X)',
      'Bluesky',
      'YouTube',
    ];

    final int midPoint = (navigationLinks.length / 2).ceil();
    final firstColumn = navigationLinks.sublist(0, midPoint);
    final secondColumn = navigationLinks.sublist(midPoint);

    Widget buildNavigationLinks() {
      if (isMobile) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (final link in firstColumn) ...[
                  _buildFooterLink(link),
                  const SizedBox(height: 8),
                ]
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (final link in secondColumn) ...[
                  _buildFooterLink(link),
                  const SizedBox(height: 8),
                ]
              ],
            ),
          ],
        );
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          for (final link in navigationLinks) ...[
            _buildFooterLink(link),
            const SizedBox(height: 8),
          ]
        ],
      );
    }

    final content = [
      // Copyright and License
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' ${DateTime.now().year} Alper Efe Şahin.',
            style: const TextStyle(
              color: Color(0xFF6B7280),
            ),
          ),
          Row(
            children: [
              const Text(
                'All content of this website is distributed under the ',
                style: TextStyle(
                  color: Color(0xFF6B7280),
                ),
              ),
              Text(
                'CC BY-NC license',
                style: const TextStyle(
                  color: Color(0xFF6B7280),
                  decoration: TextDecoration.underline,
                ),
              ),
              const Text(
                '.',
                style: TextStyle(
                  color: Color(0xFF6B7280),
                ),
              ),
            ],
          ),
        ],
      ),
      
      // Navigation Links
      buildNavigationLinks(),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...content,
                const SizedBox(height: 24),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: content,
            ),
    );
  }

  Widget _buildFooterLink(String text) {
    return Text(
      text,
      style: const TextStyle(
        color: Color(0xFF6B7280),
      ),
    );
  }
}
