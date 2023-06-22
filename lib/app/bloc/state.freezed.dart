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
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Locale locale)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLocaleState value) initial,
    required TResult Function(LoadedLocaleState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLocaleState value)? initial,
    TResult? Function(LoadedLocaleState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLocaleState value)? initial,
    TResult Function(LoadedLocaleState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialLocaleStateCopyWith<$Res> {
  factory _$$InitialLocaleStateCopyWith(_$InitialLocaleState value,
          $Res Function(_$InitialLocaleState) then) =
      __$$InitialLocaleStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialLocaleStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$InitialLocaleState>
    implements _$$InitialLocaleStateCopyWith<$Res> {
  __$$InitialLocaleStateCopyWithImpl(
      _$InitialLocaleState _value, $Res Function(_$InitialLocaleState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialLocaleState implements InitialLocaleState {
  const _$InitialLocaleState();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialLocaleState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Locale locale)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? loaded,
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
    required TResult Function(InitialLocaleState value) initial,
    required TResult Function(LoadedLocaleState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLocaleState value)? initial,
    TResult? Function(LoadedLocaleState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLocaleState value)? initial,
    TResult Function(LoadedLocaleState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialLocaleState implements AppState {
  const factory InitialLocaleState() = _$InitialLocaleState;
}

/// @nodoc
abstract class _$$LoadedLocaleStateCopyWith<$Res> {
  factory _$$LoadedLocaleStateCopyWith(
          _$LoadedLocaleState value, $Res Function(_$LoadedLocaleState) then) =
      __$$LoadedLocaleStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$LoadedLocaleStateCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$LoadedLocaleState>
    implements _$$LoadedLocaleStateCopyWith<$Res> {
  __$$LoadedLocaleStateCopyWithImpl(
      _$LoadedLocaleState _value, $Res Function(_$LoadedLocaleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$LoadedLocaleState(
      null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$LoadedLocaleState implements LoadedLocaleState {
  const _$LoadedLocaleState(this.locale);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'AppState.loaded(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedLocaleState &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedLocaleStateCopyWith<_$LoadedLocaleState> get copyWith =>
      __$$LoadedLocaleStateCopyWithImpl<_$LoadedLocaleState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Locale locale) loaded,
  }) {
    return loaded(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Locale locale)? loaded,
  }) {
    return loaded?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Locale locale)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialLocaleState value) initial,
    required TResult Function(LoadedLocaleState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialLocaleState value)? initial,
    TResult? Function(LoadedLocaleState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialLocaleState value)? initial,
    TResult Function(LoadedLocaleState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedLocaleState implements AppState {
  const factory LoadedLocaleState(final Locale locale) = _$LoadedLocaleState;

  Locale get locale;
  @JsonKey(ignore: true)
  _$$LoadedLocaleStateCopyWith<_$LoadedLocaleState> get copyWith =>
      throw _privateConstructorUsedError;
}
