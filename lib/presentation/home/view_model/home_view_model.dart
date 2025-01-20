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
  HomeViewModel() : super(HomeState.initial());

  final LocalDatabase localDb = getIt<LocalDatabase>();

  Future<void> switchLanguage() async {
    state = state.copyWith(isLoading: true);

    try {
      final Locale currentLocale = state.locale;
      final Locale targetLocale = currentLocale == const Locale('en') ? const Locale('tr') : const Locale('en');

      state = state.copyWith(isLoading: false, locale: targetLocale);
    } catch (e) {
      developer.log('Error switching language: $e');
      state = state.copyWith(isLoading: false);
    }
  }
}
