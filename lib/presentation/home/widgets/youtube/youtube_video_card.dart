import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/youtube/ui_model/youtube_video_card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class YoutubeVideoCard extends StatelessWidget with LaunchMixin {
  const YoutubeVideoCard({super.key, required this.youtubeVideoCardModel});

  final YoutubeVideoCardModel youtubeVideoCardModel;

  @override
  Widget build(BuildContext context) {
    final String title = youtubeVideoCardModel.title;
    final String date = youtubeVideoCardModel.date;
    final String description = youtubeVideoCardModel.description;
    final String videoUrl = youtubeVideoCardModel.videoUrl;
    final String watchText = AppLocalizations.of(context)?.watch ?? "";
    const String youtubePodcastImagePath = "assets/youtube_podcast.jpg";

    final bool isSmallCard = youtubeVideoCardModel.isSmallCard;

    if (isSmallCard) {
      return SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: title, fontWeight: FontWeight.w800),
            CustomText(text: date, color: grey, fontSize: 16),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: CustomText(text: description, fontSize: 20),
            ),
            TextButton(
              onPressed: () => launchWebsite(websitePath: videoUrl),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                backgroundColor: lightBlue,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 4,
                children: [
                  const Icon(Icons.play_circle_outline, color: black, size: 20),
                  CustomText(text: watchText, color: black, fontWeight: FontWeight.w800, fontSize: 14),
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
      onTap: () => launchWebsite(websitePath: videoUrl),
      child: Container(
        decoration: BoxDecoration(
          color: lightBlue,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16)),
              child: Stack(
                children: [
                  Image.asset(youtubePodcastImagePath, height: 400, width: double.infinity, fit: BoxFit.cover),
                  Container(
                    width: double.infinity,
                    height: 400,
                    decoration: BoxDecoration(color: black.withValues(alpha: 0.5)),
                  ),
                  Positioned.fill(
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 4,
                          children: [
                            const Icon(Icons.play_circle_outline, color: black, size: 20),
                            CustomText(text: watchText, color: black, fontWeight: FontWeight.w800, fontSize: 14),
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
                  CustomText(text: title, fontSize: 24, fontWeight: FontWeight.w800),
                  const SizedBox(height: 8),
                  CustomText(text: date, color: grey, fontSize: 18),
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
