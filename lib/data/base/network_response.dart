import 'package:json_annotation/json_annotation.dart';

part 'network_response.g.dart';

/// Base class for all network models
@JsonSerializable(createToJson: false, genericArgumentFactories: true)
class NetworkResponse<T> {
  NetworkResponse();

  /// Error message if response contains error or warning
  @JsonKey(name: "Message")
  String? message;

  /// Total number of results in list responses
  @JsonKey(name: "TotalRow")
  int? totalRow;

  @JsonKey(name: "Data")
  T? data;

  @JsonKey(name: "Callback")
  CallbackData? callback;

  T get requireData => data!;

  factory NetworkResponse.withData(T? data) {
    return NetworkResponse()..data = data;
  }

  factory NetworkResponse.fromJson(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return _$NetworkResponseFromJson<T>(json, fromJsonT);
  }
}

@JsonSerializable(createToJson: false)
class CallbackData {
  @JsonKey(name: "Modal")
  ModalData? modal;
  @JsonKey(name: "GoTo")
  GoToData? goTo;

  @JsonKey(name: "Refresh")
  bool refresh;

  CallbackData({this.modal, this.goTo, this.refresh = false});

  factory CallbackData.fromJson(Map<String, dynamic> json) =>
      _$CallbackDataFromJson(json);

  @override
  String toString() {
    return 'CallbackData{modal: $modal, goTo: $goTo}';
  }
}

@JsonSerializable(createToJson: false)
class ModalData {
  @JsonKey(name: "Id")
  int? id;

  @JsonKey(name: "Description")
  String description;

  @JsonKey(name: "Title")
  String? title;
  @JsonKey(name: "Button")
  ButtonData button;

  @JsonKey(name: "Cancellable")
  bool? cancellable;

  @JsonKey(name: "CancelUri")
  String? cancelUri;

  @JsonKey(name: "CancelReferer")
  String? cancelReferer;

  @JsonKey(name: "Image")
  String? image;

  @JsonKey(name: "Refresh")
  bool? refresh;

  @JsonKey(name: "CacheType")
  CacheType? cacheType;

  @JsonKey(name: "Duration")
  int? duration;

  String get modalId => id.toString();

  @override
  String toString() {
    return 'ModalData{description: $description, title: $title, button: $button, cancellable: $cancellable, cancelUri: $cancelUri, cancelReferer: $cancelReferer, image: $image}';
  }

  ModalData(
      {this.id,
      required this.description,
      required this.title,
      required this.button,
      this.cancellable,
      this.image,
      this.refresh,
      this.cacheType,
      this.duration});

  factory ModalData.fromJson(Map<String, dynamic> json) =>
      _$ModalDataFromJson(json);
}

@JsonSerializable(createToJson: false)
class ButtonData {
  @JsonKey(name: "Title")
  String? title;
  @JsonKey(name: "Uri")
  String? uri;
  @JsonKey(name: "Referer")
  String? referer;

  @override
  String toString() {
    return 'ButtonData{title: $title, uri: $uri, referer: $referer}';
  }

  ButtonData({this.title, this.uri, this.referer});

  factory ButtonData.fromJson(Map<String, dynamic> json) =>
      _$ButtonDataFromJson(json);
}

@JsonSerializable(createToJson: false)
class GoToData {
  @JsonKey(name: "Uri")
  String? uri;

/*  @JsonKey(name: 'Type')
  final Type type;*/
  @JsonKey(name: "Referer")
  String? referer;

  GoToData(this.uri, this.referer);

  factory GoToData.fromJson(Map<String, dynamic> json) =>
      _$GoToDataFromJson(json);

  @override
  String toString() {
    return 'GoToData{uri: $uri, referer: $referer}';
  }
}

enum CacheType {
  @JsonValue(0)
  closeApp,
  @JsonValue(1)
  duration
}
