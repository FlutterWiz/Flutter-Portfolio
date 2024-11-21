import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/core/design_system/footer/footer_section.dart';
import 'package:alperefesahin_dev/features/about/widgets/greetings/greetings_section.dart';
import 'package:alperefesahin_dev/features/about/widgets/open_source/open_source_section.dart';
import 'package:alperefesahin_dev/features/about/widgets/youtube/youtube_section.dart';
import 'package:alperefesahin_dev/features/about/widgets/writing/writing_section.dart';
import 'package:alperefesahin_dev/features/about/widgets/stay_in_touch/stay_in_touch_section.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 1020;
    final horizontalPadding = isMobile ? 20.0 : 120.0;
    const double maxScreenWidth = 1280;

    return Scaffold(
      backgroundColor: white,
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
