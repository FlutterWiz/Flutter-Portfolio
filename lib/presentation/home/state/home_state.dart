import 'dart:ui';

import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  const HomeState({this.language = const Locale('en'), this.isLoading = false});

  final Locale language;
  final bool isLoading;

  @override
  List<Object> get props => [language, isLoading];

  HomeState copyWith({Locale? locale, bool? isLoading}) {
    return HomeState(language: locale ?? this.language, isLoading: isLoading ?? this.isLoading);
  }

  factory HomeState.initial() => const HomeState();
}
