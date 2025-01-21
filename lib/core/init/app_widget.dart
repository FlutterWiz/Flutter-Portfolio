import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/presentation/home/home_page.dart';
import 'package:alperefesahin_dev/presentation/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppWidget extends ConsumerWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Locale appLanguage = ref.watch(homeViewModelProvider).language;
    final Locale englishLanguage = const Locale('en');
    
    final bool isAppLanguageEnglish = appLanguage == englishLanguage;

    return MaterialApp(
      title: 'alperefesahin',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorScheme: ColorScheme.fromSeed(seedColor: blue)),
      home: HomePage(
        isAppLanguageEnglish: isAppLanguageEnglish,
        onTapLanguageButton: () {
          ref.read(homeViewModelProvider.notifier).switchLanguage();
        },
      ),
      locale: appLanguage,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
