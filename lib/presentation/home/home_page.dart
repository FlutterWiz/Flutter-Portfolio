import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/design_system/footer/footer_section.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:alperefesahin_dev/presentation/gen/assets.gen.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/about/about_section.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/open_source/open_source_section.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/youtube/youtube_section.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/writing/writing_section.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/stay_in_touch/stay_in_touch_section.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget with LaunchMixin {
  const HomePage({super.key, required this.onTapLanguageButton, required this.isAppLanguageEnglish});

  final VoidCallback onTapLanguageButton;
  final bool isAppLanguageEnglish;

  @override
  Widget build(BuildContext context) {
    const double maxScreenWidth = 1280;
    final double screenWidth = MediaQuery.of(context).size.width;

    final bool isMobile = screenWidth < 1020;

    final String emailAddress = AppLocalizations.of(context)?.emailAddress ?? '';
    final String emailSubject = AppLocalizations.of(context)?.emailSubject ?? '';
    final String emailBody = AppLocalizations.of(context)?.emailBody ?? '';
    final String miniAppBarImagePath = Assets.efe.path;
    final String appLanguageImagePath = isAppLanguageEnglish ? Assets.ukFlag.path : Assets.trFlag.path;

    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        leadingWidth: isMobile ? 70 : 170,
        toolbarHeight: 80,
        elevation: 0.5,
        scrolledUnderElevation: 0.5,
        shadowColor: grey.withValues(alpha: 0),
        backgroundColor: appBarBackgroundColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: InkWell(
              highlightColor: transparent,
              splashColor: transparent,
              hoverColor: transparent,
              onTap: onTapLanguageButton,
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: transparent,
                  image: DecorationImage(
                    image: AssetImage(appLanguageImagePath),
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 24), child: VerticalDivider()),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 20),
            child: InkWell(
              highlightColor: transparent,
              splashColor: transparent,
              hoverColor: transparent,
              onTap: () => launchEmail(emailAddress: emailAddress, emailSubject: emailSubject, emailBody: emailBody),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [
                  const FaIcon(FontAwesomeIcons.solidEnvelope, size: 14),
                  CustomText(text: emailAddress, fontSize: 16, fontWeight: FontWeight.w600),
                ],
              ),
            ),
          ),
        ],
        leading: Padding(
          padding: EdgeInsets.only(left: isMobile ? 20 : 120, top: 16, bottom: 16),
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(miniAppBarImagePath),
                filterQuality: FilterQuality.high,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 120),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: maxScreenWidth),
                child: Column(
                  children: [
                    AboutSection(isMobile: isMobile),
                    WritingSection(isMobile: isMobile),
                    OpenSourceSection(isMobile: isMobile),
                    YoutubeSection(isMobile: isMobile),
                    StayInTouchSection(isMobile: isMobile),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                const CustomDivider(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: isMobile ? 20 : 120),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: maxScreenWidth),
                    child: FooterSection(isMobile: isMobile),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
