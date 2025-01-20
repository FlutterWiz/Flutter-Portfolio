import 'package:alperefesahin_dev/presentation/home/widgets/open_source/ui_model/unfeatured_project_model.dart';
import 'package:alperefesahin_dev/presentation/home/widgets/open_source/unfeatured_project_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UnfeaturedProjects extends StatelessWidget {
  const UnfeaturedProjects({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final String phoneAuthTitle = AppLocalizations.of(context)?.phoneAuthTitle ?? '';
    final String phoneAuthDescription = AppLocalizations.of(context)?.phoneAuthDescription ?? '';
    final String socialDatingTitle = AppLocalizations.of(context)?.socialDatingTitle ?? '';
    final String socialDatingDescription = AppLocalizations.of(context)?.socialDatingDescription ?? '';
    final String textToImageGeneratorTitle = AppLocalizations.of(context)?.textToImageGeneratorTitle ?? '';
    final String textToImageGeneratorDescription = AppLocalizations.of(context)?.textToImageGeneratorDescription ?? '';
    final String dddTitle = AppLocalizations.of(context)?.dddTitle ?? '';
    final String dddDescription = AppLocalizations.of(context)?.dddDescription ?? '';

    final List<UnfeaturedProjectModel> unfeaturedProjectModels = [
      UnfeaturedProjectModel(
        isMobile: isMobile,
        title: phoneAuthTitle,
        description: phoneAuthDescription,
      ),
      UnfeaturedProjectModel(
        isMobile: isMobile,
        title: socialDatingTitle,
        description: socialDatingDescription,
      ),
      UnfeaturedProjectModel(
        isMobile: isMobile,
        title: textToImageGeneratorTitle,
        description: textToImageGeneratorDescription,
      ),
      UnfeaturedProjectModel(
        isMobile: isMobile,
        title: dddTitle,
        description: dddDescription,
      ),
    ];

    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: 12,
        alignment: WrapAlignment.spaceBetween,
        children: [
          UnfeaturedProjectContainer(unfeaturedProjectModel: unfeaturedProjectModels[0]),
          UnfeaturedProjectContainer(unfeaturedProjectModel: unfeaturedProjectModels[1]),
          UnfeaturedProjectContainer(unfeaturedProjectModel: unfeaturedProjectModels[2]),
          UnfeaturedProjectContainer(unfeaturedProjectModel: unfeaturedProjectModels[3]),
        ],
      ),
    );
  }
}
