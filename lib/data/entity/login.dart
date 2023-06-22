import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.g.dart';

@JsonSerializable(createFactory: false)
class LoginRequestData  {
 LoginRequestData(this.username, this.password);

 @JsonKey(name: 'username')
 final String username;

 @JsonKey(name: 'password')
 final String password;

 Map<String, dynamic> toJson() => _$LoginRequestDataToJson(this);
}
