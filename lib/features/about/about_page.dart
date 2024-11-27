import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/core/design_system/footer/footer_section.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:alperefesahin_dev/features/about/widgets/greetings/greetings_section.dart';
import 'package:alperefesahin_dev/features/about/widgets/open_source/open_source_section.dart';
import 'package:alperefesahin_dev/features/about/widgets/youtube/youtube_section.dart';
import 'package:alperefesahin_dev/features/about/widgets/writing/writing_section.dart';
import 'package:alperefesahin_dev/features/about/widgets/stay_in_touch/stay_in_touch_section.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatelessWidget with LaunchMixin {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 1020;
    final horizontalPadding = isMobile ? 20.0 : 120.0;
    const double maxScreenWidth = 1280;

    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        leadingWidth: isMobile ? 70 : 170,
        toolbarHeight: 80,
        elevation: 0.5,
        scrolledUnderElevation: 0.5,
        shadowColor: grey.withOpacity(0.5),
        backgroundColor: appBarBackgroundColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              highlightColor: transparent,
              splashColor: transparent,
              hoverColor: transparent,
              onTap: () => launchUrlInWeb(
                isEmail: true,
                emailPath: "contact@alperefesahin.dev",
                emailSubject: "Contact",
                emailBody: "Hello, I would like to get in touch with you.",
              ),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.solidEnvelope, size: 14),
                  SizedBox(width: 8),
                  CustomText(
                    text: "contact@alperefesahin.dev",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
          ),
        ],
        leading: Padding(
          padding:
              EdgeInsets.only(left: isMobile ? 20 : 120, top: 16, bottom: 16),
          child: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage("assets/efe.jpeg"),
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
