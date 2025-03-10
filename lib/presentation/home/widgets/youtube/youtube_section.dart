import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_button.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/youtube/ui_model/youtube_video_card_model.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/youtube/youtube_videos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class YoutubeSection extends StatelessWidget with LaunchMixin {
  const YoutubeSection({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final String youtubeTitle = AppLocalizations.of(context)?.youtubeTitle ?? '';
    final String youtubeDescription = AppLocalizations.of(context)?.youtubeDescription ?? '';
    final String visitYoutubeChannelText = AppLocalizations.of(context)?.visitYoutubeChannelText ?? '';
    final String flutterSohbetleriTitle = AppLocalizations.of(context)?.flutterSohbetleriTitle ?? '';
    final String flutterSohbetleriDescription = AppLocalizations.of(context)?.flutterSohbetleriDescription ?? '';
    final String socialChatTitle = AppLocalizations.of(context)?.socialChatTitle ?? '';
    final String socialChatDescription = AppLocalizations.of(context)?.socialChatDescription ?? '';
    final String flutterMapAppTitle = AppLocalizations.of(context)?.mapAppTitle ?? '';
    final String flutterMapAppDescription = AppLocalizations.of(context)?.flutterMapAppDescription ?? '';
    final String dateMarch = AppLocalizations.of(context)?.dateMarch ?? '';
    final String dateJan = AppLocalizations.of(context)?.dateJan ?? '';
    final String dateFebTwelve = AppLocalizations.of(context)?.dateFebTwelve ?? '';

    const flutterSohbetleriUrl = 'https://www.youtube.com/watch?v=NGrTJfQfOGA';
    const socialChatUrl = 'https://www.youtube.com/watch?v=r9MtCK33J78&list=PL3PvZdDvJcMIixstKkuvLWQleqJ1VhLrf';
    const flutterMapAppUrl = 'https://www.youtube.com/watch?v=X8EX7yqoy1A';
    const youtubeChannelUrl = 'https://youtube.com/@FlutterWiz/';

    final List<YoutubeVideoCardModel> listOfYoutubeVideoCardModel = [
      YoutubeVideoCardModel(
        title: flutterSohbetleriTitle,
        date: dateMarch,
        description: flutterSohbetleriDescription,
        videoUrl: flutterSohbetleriUrl,
        isSmallCard: false,
      ),
      YoutubeVideoCardModel(
        title: flutterMapAppTitle,
        date: dateFebTwelve,
        description: flutterMapAppDescription,
        videoUrl: flutterMapAppUrl,
        isSmallCard: true,
      ),
      YoutubeVideoCardModel(
        title: socialChatTitle,
        date: dateJan,
        description: socialChatDescription,
        videoUrl: socialChatUrl,
        isSmallCard: true,
      ),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: youtubeTitle, fontSize: 32, height: 1.2, fontWeight: FontWeight.w800),
        Container(
          width: isMobile ? null : 560,
          padding: const EdgeInsets.only(top: 16, bottom: 60),
          child: CustomText(text: youtubeDescription, color: blackWithOpacity87),
        ),
        YoutubeVideos(isMobile: isMobile, listOfYoutubeVideoCardModel: listOfYoutubeVideoCardModel),
        const SizedBox(height: 60),
        CustomButton(text: visitYoutubeChannelText, onPressed: () => launchWebsite(websitePath: youtubeChannelUrl)),
      ],
    );
  }
}
