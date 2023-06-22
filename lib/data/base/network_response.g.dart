// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkResponse<T> _$NetworkResponseFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    NetworkResponse<T>()
      ..message = json['Message'] as String?
      ..totalRow = json['TotalRow'] as int?
      ..data = _$nullableGenericFromJson(json['Data'], fromJsonT)
      ..callback = json['Callback'] == null
          ? null
          : CallbackData.fromJson(json['Callback'] as Map<String, dynamic>);

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

CallbackData _$CallbackDataFromJson(Map<String, dynamic> json) => CallbackData(
      modal: json['Modal'] == null
          ? null
          : ModalData.fromJson(json['Modal'] as Map<String, dynamic>),
      goTo: json['GoTo'] == null
          ? null
          : GoToData.fromJson(json['GoTo'] as Map<String, dynamic>),
      refresh: json['Refresh'] as bool? ?? false,
    );

ModalData _$ModalDataFromJson(Map<String, dynamic> json) => ModalData(
      id: json['Id'] as int?,
      description: json['Description'] as String,
      title: json['Title'] as String?,
      button: ButtonData.fromJson(json['Button'] as Map<String, dynamic>),
      cancellable: json['Cancellable'] as bool?,
      image: json['Image'] as String?,
      refresh: json['Refresh'] as bool?,
      cacheType: $enumDecodeNullable(_$CacheTypeEnumMap, json['CacheType']),
      duration: json['Duration'] as int?,
    )
      ..cancelUri = json['CancelUri'] as String?
      ..cancelReferer = json['CancelReferer'] as String?;

const _$CacheTypeEnumMap = {
  CacheType.closeApp: 0,
  CacheType.duration: 1,
};

ButtonData _$ButtonDataFromJson(Map<String, dynamic> json) => ButtonData(
      title: json['Title'] as String?,
      uri: json['Uri'] as String?,
      referer: json['Referer'] as String?,
    );

GoToData _$GoToDataFromJson(Map<String, dynamic> json) => GoToData(
      json['Uri'] as String?,
      json['Referer'] as String?,
    );
