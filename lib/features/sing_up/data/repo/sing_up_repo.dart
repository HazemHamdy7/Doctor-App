import 'package:doctor_app/core/networking/api_error_handler.dart';
import 'package:doctor_app/core/networking/api_result.dart';
import 'package:doctor_app/core/networking/api_service.dart';
import 'package:doctor_app/features/sing_up/data/model/sing_up_request_body.dart';
import 'package:doctor_app/features/sing_up/data/model/sing_up_response.dart';

class SingUpRepo {
  final ApiService _apiService;
  SingUpRepo(this._apiService);

  Future<ApiResult<SingUpResponse>> singUp(
    SignupRequestBody signupRequestBody,
  ) async {
    try {
      final response = await _apiService.singUp(signupRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
