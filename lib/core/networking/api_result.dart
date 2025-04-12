import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part    'api_result.freezed.dart';

//! يمكن استخدام هذا الكلاس بدلا من استخدام   مكتبهZ)
//? The class is used with out library DartZ to make two states of the result  Sueccess or Failure
@freezed
class ApiResult<T> with _$ApiResult<T> {
  const factory ApiResult.success(T data) = Success<T>;
  const factory ApiResult.failure(ErrorHandler errorHandler) = Failure<T>;
}
