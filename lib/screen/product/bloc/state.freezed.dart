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
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductData> data) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductData> data)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductData> data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialProductState value) initial,
    required TResult Function(LoadingProductState value) loading,
    required TResult Function(LoadedProductState value) loaded,
    required TResult Function(ErrorProductState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialProductState value)? initial,
    TResult? Function(LoadingProductState value)? loading,
    TResult? Function(LoadedProductState value)? loaded,
    TResult? Function(ErrorProductState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProductState value)? initial,
    TResult Function(LoadingProductState value)? loading,
    TResult Function(LoadedProductState value)? loaded,
    TResult Function(ErrorProductState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialProductStateCopyWith<$Res> {
  factory _$$InitialProductStateCopyWith(_$InitialProductState value,
          $Res Function(_$InitialProductState) then) =
      __$$InitialProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialProductStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$InitialProductState>
    implements _$$InitialProductStateCopyWith<$Res> {
  __$$InitialProductStateCopyWithImpl(
      _$InitialProductState _value, $Res Function(_$InitialProductState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialProductState implements InitialProductState {
  const _$InitialProductState();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialProductState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductData> data) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductData> data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductData> data)? loaded,
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
    required TResult Function(InitialProductState value) initial,
    required TResult Function(LoadingProductState value) loading,
    required TResult Function(LoadedProductState value) loaded,
    required TResult Function(ErrorProductState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialProductState value)? initial,
    TResult? Function(LoadingProductState value)? loading,
    TResult? Function(LoadedProductState value)? loaded,
    TResult? Function(ErrorProductState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProductState value)? initial,
    TResult Function(LoadingProductState value)? loading,
    TResult Function(LoadedProductState value)? loaded,
    TResult Function(ErrorProductState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialProductState implements ProductState {
  const factory InitialProductState() = _$InitialProductState;
}

/// @nodoc
abstract class _$$LoadingProductStateCopyWith<$Res> {
  factory _$$LoadingProductStateCopyWith(_$LoadingProductState value,
          $Res Function(_$LoadingProductState) then) =
      __$$LoadingProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingProductStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$LoadingProductState>
    implements _$$LoadingProductStateCopyWith<$Res> {
  __$$LoadingProductStateCopyWithImpl(
      _$LoadingProductState _value, $Res Function(_$LoadingProductState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingProductState implements LoadingProductState {
  const _$LoadingProductState();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingProductState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductData> data) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductData> data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductData> data)? loaded,
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
    required TResult Function(InitialProductState value) initial,
    required TResult Function(LoadingProductState value) loading,
    required TResult Function(LoadedProductState value) loaded,
    required TResult Function(ErrorProductState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialProductState value)? initial,
    TResult? Function(LoadingProductState value)? loading,
    TResult? Function(LoadedProductState value)? loaded,
    TResult? Function(ErrorProductState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProductState value)? initial,
    TResult Function(LoadingProductState value)? loading,
    TResult Function(LoadedProductState value)? loaded,
    TResult Function(ErrorProductState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingProductState implements ProductState {
  const factory LoadingProductState() = _$LoadingProductState;
}

/// @nodoc
abstract class _$$LoadedProductStateCopyWith<$Res> {
  factory _$$LoadedProductStateCopyWith(_$LoadedProductState value,
          $Res Function(_$LoadedProductState) then) =
      __$$LoadedProductStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductData> data});
}

/// @nodoc
class __$$LoadedProductStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$LoadedProductState>
    implements _$$LoadedProductStateCopyWith<$Res> {
  __$$LoadedProductStateCopyWithImpl(
      _$LoadedProductState _value, $Res Function(_$LoadedProductState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedProductState(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductData>,
    ));
  }
}

/// @nodoc

class _$LoadedProductState implements LoadedProductState {
  const _$LoadedProductState(final List<ProductData> data) : _data = data;

  final List<ProductData> _data;
  @override
  List<ProductData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ProductState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedProductState &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedProductStateCopyWith<_$LoadedProductState> get copyWith =>
      __$$LoadedProductStateCopyWithImpl<_$LoadedProductState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductData> data) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductData> data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductData> data)? loaded,
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
    required TResult Function(InitialProductState value) initial,
    required TResult Function(LoadingProductState value) loading,
    required TResult Function(LoadedProductState value) loaded,
    required TResult Function(ErrorProductState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialProductState value)? initial,
    TResult? Function(LoadingProductState value)? loading,
    TResult? Function(LoadedProductState value)? loaded,
    TResult? Function(ErrorProductState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProductState value)? initial,
    TResult Function(LoadingProductState value)? loading,
    TResult Function(LoadedProductState value)? loaded,
    TResult Function(ErrorProductState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedProductState implements ProductState {
  const factory LoadedProductState(final List<ProductData> data) =
      _$LoadedProductState;

  List<ProductData> get data;
  @JsonKey(ignore: true)
  _$$LoadedProductStateCopyWith<_$LoadedProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorProductStateCopyWith<$Res> {
  factory _$$ErrorProductStateCopyWith(
          _$ErrorProductState value, $Res Function(_$ErrorProductState) then) =
      __$$ErrorProductStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorProductStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ErrorProductState>
    implements _$$ErrorProductStateCopyWith<$Res> {
  __$$ErrorProductStateCopyWithImpl(
      _$ErrorProductState _value, $Res Function(_$ErrorProductState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorProductState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorProductState implements ErrorProductState {
  const _$ErrorProductState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProductState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorProductState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorProductStateCopyWith<_$ErrorProductState> get copyWith =>
      __$$ErrorProductStateCopyWithImpl<_$ErrorProductState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductData> data) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductData> data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductData> data)? loaded,
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
    required TResult Function(InitialProductState value) initial,
    required TResult Function(LoadingProductState value) loading,
    required TResult Function(LoadedProductState value) loaded,
    required TResult Function(ErrorProductState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialProductState value)? initial,
    TResult? Function(LoadingProductState value)? loading,
    TResult? Function(LoadedProductState value)? loaded,
    TResult? Function(ErrorProductState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialProductState value)? initial,
    TResult Function(LoadingProductState value)? loading,
    TResult Function(LoadedProductState value)? loaded,
    TResult Function(ErrorProductState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorProductState implements ProductState {
  const factory ErrorProductState(final String message) = _$ErrorProductState;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorProductStateCopyWith<_$ErrorProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
