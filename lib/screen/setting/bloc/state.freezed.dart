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
mixin _$SettingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSettingState value) initial,
    required TResult Function(LoadingSettingState value) loading,
    required TResult Function(LoadedSettingState value) loaded,
    required TResult Function(ErrorSettingState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSettingState value)? initial,
    TResult? Function(LoadingSettingState value)? loading,
    TResult? Function(LoadedSettingState value)? loaded,
    TResult? Function(ErrorSettingState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSettingState value)? initial,
    TResult Function(LoadingSettingState value)? loading,
    TResult Function(LoadedSettingState value)? loaded,
    TResult Function(ErrorSettingState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res, SettingState>;
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialSettingStateCopyWith<$Res> {
  factory _$$InitialSettingStateCopyWith(_$InitialSettingState value,
          $Res Function(_$InitialSettingState) then) =
      __$$InitialSettingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialSettingStateCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$InitialSettingState>
    implements _$$InitialSettingStateCopyWith<$Res> {
  __$$InitialSettingStateCopyWithImpl(
      _$InitialSettingState _value, $Res Function(_$InitialSettingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialSettingState implements InitialSettingState {
  const _$InitialSettingState();

  @override
  String toString() {
    return 'SettingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialSettingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
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
    required TResult Function(InitialSettingState value) initial,
    required TResult Function(LoadingSettingState value) loading,
    required TResult Function(LoadedSettingState value) loaded,
    required TResult Function(ErrorSettingState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSettingState value)? initial,
    TResult? Function(LoadingSettingState value)? loading,
    TResult? Function(LoadedSettingState value)? loaded,
    TResult? Function(ErrorSettingState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSettingState value)? initial,
    TResult Function(LoadingSettingState value)? loading,
    TResult Function(LoadedSettingState value)? loaded,
    TResult Function(ErrorSettingState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialSettingState implements SettingState {
  const factory InitialSettingState() = _$InitialSettingState;
}

/// @nodoc
abstract class _$$LoadingSettingStateCopyWith<$Res> {
  factory _$$LoadingSettingStateCopyWith(_$LoadingSettingState value,
          $Res Function(_$LoadingSettingState) then) =
      __$$LoadingSettingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingSettingStateCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$LoadingSettingState>
    implements _$$LoadingSettingStateCopyWith<$Res> {
  __$$LoadingSettingStateCopyWithImpl(
      _$LoadingSettingState _value, $Res Function(_$LoadingSettingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingSettingState implements LoadingSettingState {
  const _$LoadingSettingState();

  @override
  String toString() {
    return 'SettingState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingSettingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
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
    required TResult Function(InitialSettingState value) initial,
    required TResult Function(LoadingSettingState value) loading,
    required TResult Function(LoadedSettingState value) loaded,
    required TResult Function(ErrorSettingState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSettingState value)? initial,
    TResult? Function(LoadingSettingState value)? loading,
    TResult? Function(LoadedSettingState value)? loaded,
    TResult? Function(ErrorSettingState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSettingState value)? initial,
    TResult Function(LoadingSettingState value)? loading,
    TResult Function(LoadedSettingState value)? loaded,
    TResult Function(ErrorSettingState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingSettingState implements SettingState {
  const factory LoadingSettingState() = _$LoadingSettingState;
}

/// @nodoc
abstract class _$$LoadedSettingStateCopyWith<$Res> {
  factory _$$LoadedSettingStateCopyWith(_$LoadedSettingState value,
          $Res Function(_$LoadedSettingState) then) =
      __$$LoadedSettingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadedSettingStateCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$LoadedSettingState>
    implements _$$LoadedSettingStateCopyWith<$Res> {
  __$$LoadedSettingStateCopyWithImpl(
      _$LoadedSettingState _value, $Res Function(_$LoadedSettingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadedSettingState implements LoadedSettingState {
  const _$LoadedSettingState();

  @override
  String toString() {
    return 'SettingState.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadedSettingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialSettingState value) initial,
    required TResult Function(LoadingSettingState value) loading,
    required TResult Function(LoadedSettingState value) loaded,
    required TResult Function(ErrorSettingState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSettingState value)? initial,
    TResult? Function(LoadingSettingState value)? loading,
    TResult? Function(LoadedSettingState value)? loaded,
    TResult? Function(ErrorSettingState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSettingState value)? initial,
    TResult Function(LoadingSettingState value)? loading,
    TResult Function(LoadedSettingState value)? loaded,
    TResult Function(ErrorSettingState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedSettingState implements SettingState {
  const factory LoadedSettingState() = _$LoadedSettingState;
}

/// @nodoc
abstract class _$$ErrorSettingStateCopyWith<$Res> {
  factory _$$ErrorSettingStateCopyWith(
          _$ErrorSettingState value, $Res Function(_$ErrorSettingState) then) =
      __$$ErrorSettingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorSettingStateCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$ErrorSettingState>
    implements _$$ErrorSettingStateCopyWith<$Res> {
  __$$ErrorSettingStateCopyWithImpl(
      _$ErrorSettingState _value, $Res Function(_$ErrorSettingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorSettingState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorSettingState implements ErrorSettingState {
  const _$ErrorSettingState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SettingState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSettingState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSettingStateCopyWith<_$ErrorSettingState> get copyWith =>
      __$$ErrorSettingStateCopyWithImpl<_$ErrorSettingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
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
    required TResult Function(InitialSettingState value) initial,
    required TResult Function(LoadingSettingState value) loading,
    required TResult Function(LoadedSettingState value) loaded,
    required TResult Function(ErrorSettingState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialSettingState value)? initial,
    TResult? Function(LoadingSettingState value)? loading,
    TResult? Function(LoadedSettingState value)? loaded,
    TResult? Function(ErrorSettingState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialSettingState value)? initial,
    TResult Function(LoadingSettingState value)? loading,
    TResult Function(LoadedSettingState value)? loaded,
    TResult Function(ErrorSettingState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorSettingState implements SettingState {
  const factory ErrorSettingState(final String message) = _$ErrorSettingState;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorSettingStateCopyWith<_$ErrorSettingState> get copyWith =>
      throw _privateConstructorUsedError;
}
