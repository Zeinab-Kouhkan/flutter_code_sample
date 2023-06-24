import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.g.dart';

@JsonSerializable(createFactory: false)
class LoginRequestData {
  LoginRequestData({required this.username, required this.password});

  @JsonKey(name: 'username')
  final String username;

  @JsonKey(name: 'password')
  final String password;

  Map<String, dynamic> toJson() => _$LoginRequestDataToJson(this);
}

@JsonSerializable(createToJson: false)
class LoginData {
  @JsonKey(name: 'user')
  final User user;
  @JsonKey(name: 'token')
  final String token;

  LoginData({required this.user, required this.token});

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
}

@JsonSerializable(createToJson: false)
class User {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'username')
  final String username;

  User({required this.id, required this.username});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
