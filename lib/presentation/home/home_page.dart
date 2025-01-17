import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/design_system/footer/footer_section.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/greetings/greetings_section.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/open_source/open_source_section.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/youtube/youtube_section.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/writing/writing_section.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/stay_in_touch/stay_in_touch_section.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget with LaunchMixin {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isMobile = screenWidth < 1020;

    final double horizontalPadding = isMobile ? 20.0 : 120.0;
    const double maxScreenWidth = 1280;
    final double leadingWidth = isMobile ? 70 : 170;
    const double toolbarHeight = 80;
    const double elevation = 0.5;
    const double scrolledUnderElevation = 0.5;
    const double miniAppBarImageSquareSize = 48;

    final Color shadowColor = grey.withValues(alpha: 0.0);
    const Color inkWellPropsColor = transparent;

    const String emailAddress = "contact@alperefesahin.dev";
    const String emailSubject = "Contact";
    const String emailBody = "Hello, I would like to get in touch with you.";
    const String miniAppBarImagePath = "assets/efe.jpg";

    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        leadingWidth: leadingWidth,
        toolbarHeight: toolbarHeight,
        elevation: elevation,
        scrolledUnderElevation: scrolledUnderElevation,
        shadowColor: shadowColor,
        backgroundColor: appBarBackgroundColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              highlightColor: inkWellPropsColor,
              splashColor: inkWellPropsColor,
              hoverColor: inkWellPropsColor,
              onTap: () => launchEmail(
                emailAddress: emailAddress,
                emailSubject: emailSubject,
                emailBody: emailBody,
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.solidEnvelope, size: 14),
                  SizedBox(width: 8),
                  CustomText(text: emailAddress, fontSize: 16, fontWeight: FontWeight.w600),
                ],
              ),
            ),
          ),
        ],
        leading: Padding(
          padding: EdgeInsets.only(left: isMobile ? 20 : 120, top: 16, bottom: 16),
          child: Container(
            width: miniAppBarImageSquareSize,
            height: miniAppBarImageSquareSize,
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
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
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: maxScreenWidth),
                child: Column(
                  children: [
                    GreetingsSection(isMobile: isMobile),
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
                  padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: maxScreenWidth),
                    child: FooterSection(isMobile: isMobile),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
