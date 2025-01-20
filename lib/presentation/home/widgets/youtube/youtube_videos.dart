import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/youtube/ui_model/youtube_video_card_model.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/youtube/youtube_video_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class YoutubeVideos extends StatelessWidget with LaunchMixin {
  const YoutubeVideos({
    super.key,
    required this.isMobile,
    required this.listOfYoutubeVideoCardModel,
  });

  final bool isMobile;
  final List<YoutubeVideoCardModel> listOfYoutubeVideoCardModel;

  @override
  Widget build(BuildContext context) {
    final String pastVideosText = AppLocalizations.of(context)?.pastVideos ?? '';

    return isMobile
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              YoutubeVideoCard(youtubeVideoCardModel: listOfYoutubeVideoCardModel[0]),
              Padding(
                padding: const EdgeInsets.only(top: 60, bottom: 24),
                child: CustomText(text: pastVideosText, fontSize: 14, fontWeight: FontWeight.w600),
              ),
              YoutubeVideoCard(youtubeVideoCardModel: listOfYoutubeVideoCardModel[1]),
              const CustomDivider(verticalPadding: 32),
              YoutubeVideoCard(youtubeVideoCardModel: listOfYoutubeVideoCardModel[2]),
            ],
          )
        : Row(
            children: [
              Expanded(flex: 2, child: YoutubeVideoCard(youtubeVideoCardModel: listOfYoutubeVideoCardModel[0])),
              const SizedBox(width: 48),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: pastVideosText, fontSize: 14, fontWeight: FontWeight.w600),
                    const SizedBox(height: 24),
                    YoutubeVideoCard(youtubeVideoCardModel: listOfYoutubeVideoCardModel[1]),
                    const CustomDivider(verticalPadding: 32),
                    YoutubeVideoCard(youtubeVideoCardModel: listOfYoutubeVideoCardModel[2]),
                  ],
                ),
              ),
            ],
          );
  }
}
