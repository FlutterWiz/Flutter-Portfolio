import 'dart:ui';

import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  const HomeState({this.locale = const Locale('en'), this.isLoading = false});

  final Locale locale;
  final bool isLoading;

  @override
  List<Object> get props => [locale, isLoading];

  HomeState copyWith({Locale? locale, bool? isLoading}) {
    return HomeState(locale: locale ?? this.locale, isLoading: isLoading ?? this.isLoading);
  }

  factory HomeState.initial() => const HomeState();
}
