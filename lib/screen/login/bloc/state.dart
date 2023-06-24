
import 'package:flutter_code_sample/data/entity/login.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = InitialLoginState;

  const factory LoginState.loading() = LoadingLoginState;

  const factory LoginState.loaded(LoginData data) = LoadedLoginState;

  const factory LoginState.error(String message) = ErrorLoginState;
}
