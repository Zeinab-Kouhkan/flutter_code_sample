import 'dart:ui';


import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = InitialLocaleState;
  const factory AppState.loaded(Locale locale) = LoadedLocaleState;
}