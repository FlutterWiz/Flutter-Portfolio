import 'dart:ui';
import 'dart:developer' as developer;
import 'package:alperefesahin_dev/core/di/dependency_injector.dart';
import 'package:alperefesahin_dev/data/local/local_database.dart';
import 'package:alperefesahin_dev/presentation/home/state/home_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeViewModelProvider = StateNotifierProvider<HomeViewModel, HomeState>((ref) {
  return HomeViewModel();
});

class HomeViewModel extends StateNotifier<HomeState> {
  HomeViewModel() : super(HomeState.initial()) {
    _loadCachedLanguage();
  }

  final LocalDatabase localDb = getIt<LocalDatabase>();

  final String settingsBoxName = 'settings';
  final String languageKey = 'language';

  final Locale turkishLanguage = const Locale('tr');
  final Locale englishLanguage = const Locale('en');

  Future<void> _loadCachedLanguage() async {
    try {
      final hiveBox = localDb.getHiveBox<Locale>(settingsBoxName);
      if (hiveBox.containsKey(languageKey)) {
        final savedLanguage = hiveBox.get(languageKey);

        if (savedLanguage != null) {
          state = state.copyWith(locale: savedLanguage);
        }
      }
    } catch (e) {
      developer.log('Error loading Locale: $e');
    }
  }

  Future<void> switchLanguage() async {
    state = state.copyWith(isLoading: true);

    try {
      final Locale currentAppLanguage = state.language;
      final Locale targetLanguage = currentAppLanguage == englishLanguage ? turkishLanguage : englishLanguage;

      final hiveBox = localDb.getHiveBox<Locale>(settingsBoxName);
      // At the end of the day, HiveBox has key-value pairs. Save pairs into the settings named box.
      await hiveBox.put(languageKey, targetLanguage);

      state = state.copyWith(isLoading: false, locale: targetLanguage);
    } catch (e) {
      developer.log('Error switching language: $e');
      state = state.copyWith(isLoading: false);
    }
  }
}
