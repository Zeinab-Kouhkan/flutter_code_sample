import 'package:json_annotation/json_annotation.dart';

part 'network_response.g.dart';

/// Base class for all network models
@JsonSerializable(createToJson: false, genericArgumentFactories: true)
class NetworkResponse<T> {
  NetworkResponse();

  /// Error message if response contains error or warning
  @JsonKey(name: "message")
  String? message;

  @JsonKey(name: "status")
  String? status;

  @JsonKey(name: "data")
  T? data;

  T get requireData => data!;

  factory NetworkResponse.withData(T? data) {
    return NetworkResponse()..data = data;
  }

  factory NetworkResponse.fromJson(
      Map<String, dynamic> json, T Function(Object? json) fromJsonT) {
    return _$NetworkResponseFromJson<T>(json, fromJsonT);
  }
}
