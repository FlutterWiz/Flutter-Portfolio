import 'package:alperefesahin_dev/core/design_system/footer/widgets/copyright_footer.dart';
import 'package:alperefesahin_dev/core/design_system/footer/widgets/social_footer.dart';
import 'package:alperefesahin_dev/core/mixins/launch_mixin.dart';
import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget with LaunchMixin {
  final bool isMobile;

  const FooterSection({super.key, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 96),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CopyrightFooter(),
          SocialFooter(),
        ],
      ),
    );
  }
}
