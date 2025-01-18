import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/youtube/ui_model/youtube_video_card_model.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/youtube/youtube_video_card.dart';
import 'package:flutter/material.dart';

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
    const String pastVideosText = "PAST VIDEOS";

    return isMobile
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              YoutubeVideoCard(youtubeVideoCardModel: listOfYoutubeVideoCardModel[0]),
              const Padding(
                padding: EdgeInsets.only(top: 60, bottom: 24),
                child: CustomText(
                  text: pastVideosText,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              YoutubeVideoCard(youtubeVideoCardModel: listOfYoutubeVideoCardModel[1]),
              const CustomDivider(verticalPadding: 32),
              YoutubeVideoCard(youtubeVideoCardModel: listOfYoutubeVideoCardModel[2]),
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: YoutubeVideoCard(youtubeVideoCardModel: listOfYoutubeVideoCardModel[0]),
              ),
              const SizedBox(width: 48),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: pastVideosText,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
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
