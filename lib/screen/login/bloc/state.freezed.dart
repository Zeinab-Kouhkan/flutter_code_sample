// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginData data) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginData data)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginData data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLoginState value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(LoadedLoginState value) loaded,
    required TResult Function(ErrorLoginState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLoginState value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(LoadedLoginState value)? loaded,
    TResult? Function(ErrorLoginState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(LoadedLoginState value)? loaded,
    TResult Function(ErrorLoginState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialLoginStateCopyWith<$Res> {
  factory _$$InitialLoginStateCopyWith(
          _$InitialLoginState value, $Res Function(_$InitialLoginState) then) =
      __$$InitialLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialLoginState>
    implements _$$InitialLoginStateCopyWith<$Res> {
  __$$InitialLoginStateCopyWithImpl(
      _$InitialLoginState _value, $Res Function(_$InitialLoginState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialLoginState implements InitialLoginState {
  const _$InitialLoginState();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialLoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginData data) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginData data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginData data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLoginState value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(LoadedLoginState value) loaded,
    required TResult Function(ErrorLoginState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLoginState value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(LoadedLoginState value)? loaded,
    TResult? Function(ErrorLoginState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(LoadedLoginState value)? loaded,
    TResult Function(ErrorLoginState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialLoginState implements LoginState {
  const factory InitialLoginState() = _$InitialLoginState;
}

/// @nodoc
abstract class _$$LoadingLoginStateCopyWith<$Res> {
  factory _$$LoadingLoginStateCopyWith(
          _$LoadingLoginState value, $Res Function(_$LoadingLoginState) then) =
      __$$LoadingLoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingLoginState>
    implements _$$LoadingLoginStateCopyWith<$Res> {
  __$$LoadingLoginStateCopyWithImpl(
      _$LoadingLoginState _value, $Res Function(_$LoadingLoginState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingLoginState implements LoadingLoginState {
  const _$LoadingLoginState();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingLoginState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginData data) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginData data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginData data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLoginState value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(LoadedLoginState value) loaded,
    required TResult Function(ErrorLoginState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLoginState value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(LoadedLoginState value)? loaded,
    TResult? Function(ErrorLoginState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(LoadedLoginState value)? loaded,
    TResult Function(ErrorLoginState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingLoginState implements LoginState {
  const factory LoadingLoginState() = _$LoadingLoginState;
}

/// @nodoc
abstract class _$$LoadedLoginStateCopyWith<$Res> {
  factory _$$LoadedLoginStateCopyWith(
          _$LoadedLoginState value, $Res Function(_$LoadedLoginState) then) =
      __$$LoadedLoginStateCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginData data});
}

/// @nodoc
class __$$LoadedLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadedLoginState>
    implements _$$LoadedLoginStateCopyWith<$Res> {
  __$$LoadedLoginStateCopyWithImpl(
      _$LoadedLoginState _value, $Res Function(_$LoadedLoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedLoginState(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginData,
    ));
  }
}

/// @nodoc

class _$LoadedLoginState implements LoadedLoginState {
  const _$LoadedLoginState(this.data);

  @override
  final LoginData data;

  @override
  String toString() {
    return 'LoginState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedLoginState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedLoginStateCopyWith<_$LoadedLoginState> get copyWith =>
      __$$LoadedLoginStateCopyWithImpl<_$LoadedLoginState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginData data) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginData data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginData data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLoginState value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(LoadedLoginState value) loaded,
    required TResult Function(ErrorLoginState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLoginState value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(LoadedLoginState value)? loaded,
    TResult? Function(ErrorLoginState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(LoadedLoginState value)? loaded,
    TResult Function(ErrorLoginState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedLoginState implements LoginState {
  const factory LoadedLoginState(final LoginData data) = _$LoadedLoginState;

  LoginData get data;
  @JsonKey(ignore: true)
  _$$LoadedLoginStateCopyWith<_$LoadedLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorLoginStateCopyWith<$Res> {
  factory _$$ErrorLoginStateCopyWith(
          _$ErrorLoginState value, $Res Function(_$ErrorLoginState) then) =
      __$$ErrorLoginStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorLoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ErrorLoginState>
    implements _$$ErrorLoginStateCopyWith<$Res> {
  __$$ErrorLoginStateCopyWithImpl(
      _$ErrorLoginState _value, $Res Function(_$ErrorLoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorLoginState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorLoginState implements ErrorLoginState {
  const _$ErrorLoginState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorLoginState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorLoginStateCopyWith<_$ErrorLoginState> get copyWith =>
      __$$ErrorLoginStateCopyWithImpl<_$ErrorLoginState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginData data) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginData data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginData data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLoginState value) initial,
    required TResult Function(LoadingLoginState value) loading,
    required TResult Function(LoadedLoginState value) loaded,
    required TResult Function(ErrorLoginState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLoginState value)? initial,
    TResult? Function(LoadingLoginState value)? loading,
    TResult? Function(LoadedLoginState value)? loaded,
    TResult? Function(ErrorLoginState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLoginState value)? initial,
    TResult Function(LoadingLoginState value)? loading,
    TResult Function(LoadedLoginState value)? loaded,
    TResult Function(ErrorLoginState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorLoginState implements LoginState {
  const factory ErrorLoginState(final String message) = _$ErrorLoginState;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorLoginStateCopyWith<_$ErrorLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
