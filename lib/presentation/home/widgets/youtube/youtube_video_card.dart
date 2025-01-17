import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:flutter/material.dart';

class YoutubeVideoCard extends StatelessWidget {
  final String title;
  final String date;
  final String description;
  final VoidCallback onWatch;
  final bool isSmallCard;
  final bool isMobile;

  const YoutubeVideoCard({
    super.key,
    required this.title,
    required this.date,
    required this.description,
    required this.onWatch,
    this.isSmallCard = false,
    this.isMobile = false,
  });

  @override
  Widget build(BuildContext context) {
    if (isSmallCard) {
      return SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: title,
              fontWeight: FontWeight.w800,
            ),
            CustomText(
              text: date,
              color: grey,
              fontSize: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: CustomText(
                text: description,
                fontSize: 20,
              ),
            ),
            TextButton(
              onPressed: onWatch,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                backgroundColor: lightBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.play_circle_outline,
                    color: black,
                    size: 20,
                  ),
                  SizedBox(width: 4),
                  CustomText(
                    text: 'Watch',
                    color: black,
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return InkWell(
      highlightColor: transparent,
      splashColor: transparent,
      hoverColor: transparent,
      onTap: onWatch,
      child: Container(
        decoration: BoxDecoration(
          color: lightBlue,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/youtube_podcast.jpg',
                    width: double.infinity,
                    height: 400,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: double.infinity,
                    height: 400,
                    decoration: BoxDecoration(
                      color: black.withOpacity(0.5),
                    ),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.play_circle_outline,
                              color: black,
                              size: 20,
                            ),
                            SizedBox(width: 4),
                            CustomText(
                              text: 'Watch',
                              color: black,
                              fontWeight: FontWeight.w800,
                              fontSize: 14,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: title,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                  const SizedBox(height: 8),
                  CustomText(
                    text: date,
                    color: grey,
                    fontSize: 18,
                  ),
                  const SizedBox(height: 12),
                  CustomText(text: description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
