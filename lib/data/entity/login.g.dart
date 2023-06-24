// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$LoginRequestDataToJson(LoginRequestData instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

LoginData _$LoginDataFromJson(Map<String, dynamic> json) => LoginData(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int,
      username: json['username'] as String,
    );
