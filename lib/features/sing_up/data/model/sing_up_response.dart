import 'package:json_annotation/json_annotation.dart';
part 'sing_up_response.g.dart';

@JsonSerializable()
class SingUpResponse {
  String? message;
  @JsonKey(name: "data")
  UserData? userData;
  bool? status;
  int? code;
  SingUpResponse({this.message, this.userData, this.status, this.code});

  factory SingUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SingUpResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? token;

  @JsonKey(name: "username")
  int? userName;

  UserData({this.token, this.userName});
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
