import 'package:dio/dio.dart';
import 'package:doctor_app/core/networking/api_constants.dart';
import 'package:doctor_app/features/login/data/model/login_request_body.dart';
import 'package:doctor_app/features/login/data/model/login_response.dart';
import 'package:doctor_app/features/sing_up/data/model/sing_up_request_body.dart';
import 'package:doctor_app/features/sing_up/data/model/sing_up_response.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

//? This class is used to define the API service interface using Retrofit
//? and to generate the API client code. like POST, GET, PUT, DELETE requests
//? This class is used to define the API service interface using Retrofit

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    //? LoginResponse is the response model  like"message": "Login successfully " , "status": "200  ,
    //? LoginRequestBody is the request model like "email": "3x5Y2@example.com" , "password": "123456"
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signup)
  Future<SingUpResponse> singUp(
    // sing up response
    @Body() SignupRequestBody signupRequestBody,
  );
}
