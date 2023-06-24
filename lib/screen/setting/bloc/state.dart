

import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState.initial() = InitialSettingState;
  const factory SettingState.loading() = LoadingSettingState;
  const factory SettingState.loaded() = LoadedSettingState;
  const factory SettingState.error(String message) = ErrorSettingState;
}