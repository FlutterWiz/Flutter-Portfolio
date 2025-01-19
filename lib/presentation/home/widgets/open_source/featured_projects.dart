import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/open_source/featured_project_container.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/open_source/ui_model/featured_project_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FeaturedProjects extends StatelessWidget {
  const FeaturedProjects({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    const String streamProjectUrl = "https://github.com/alperefesahin/flutter_social_chat";
    const String websiteProjectUrl = "https://github.com/alperefesahin/alperefesahin_dev";

    final flutterSocialChatTitle = AppLocalizations.of(context)?.flutterSocialChatTitle ?? "";
    final flutterSocialChatDescription =
        AppLocalizations.of(context)?.flutterSocialChatDescription ?? "";
    final flutterPersonalWebsiteTitle =
        AppLocalizations.of(context)?.flutterPersonalWebsiteTitle ?? "";
    final flutterPersonalWebsiteDescription =
        AppLocalizations.of(context)?.flutterPersonalWebsiteDescription ?? "";

    final List<FeaturedProjectModel> featuredProjects = [
      FeaturedProjectModel(
        websitePath: streamProjectUrl,
        isMobile: isMobile,
        gradientColors: const [streamLightBlue, white],
        shadowColor: streamDarkBlue,
        imagePath: "assets/stream.jpg",
        title: flutterSocialChatTitle,
        description: flutterSocialChatDescription,
        textColor: streamDarkBlueText,
        isSponsored: true,
      ),
      FeaturedProjectModel(
        websitePath: websiteProjectUrl,
        isMobile: isMobile,
        isSponsored: false,
        gradientColors: const [websiteLightOrange, white],
        shadowColor: websiteDarkOrange,
        imagePath: "assets/website_icon.jpg",
        title: flutterPersonalWebsiteTitle,
        description: flutterPersonalWebsiteDescription,
        textColor: websiteDarkOrangeText,
      )
    ];

    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: 0,
        alignment: WrapAlignment.spaceAround,
        children: [
          FeaturedProjectContainer(featuredProjectModel: featuredProjects[0]),
          FeaturedProjectContainer(featuredProjectModel: featuredProjects[1]),
        ],
      ),
    );
  }
}
