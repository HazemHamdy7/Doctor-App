import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

// TODO This class is used to represent the error response from the API.

//? This class is use to Error response from the API.

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;

  ApiErrorModel({required this.message, this.code});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
