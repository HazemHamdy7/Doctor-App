import 'package:dio/dio.dart';
import 'package:doctor_app/features/sing_up/data/model/sing_up_request_body.dart';
import 'package:doctor_app/features/sing_up/data/repo/sing_up_repo.dart';
import 'package:doctor_app/features/sing_up/logic/cubit/sing_up_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SingUpCubit extends Cubit<SingUpState> {
  final SingUpRepo _singUpRepo;
  SingUpCubit(this._singUpRepo) : super(SingUpState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSingUpState() async {
    emit(SingUpState.singUpLoading());
    final response = await _singUpRepo.singUp(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: confirmPasswordController.text,
        gender: 0,
      ),
    );

    response.when(
      success: (signupResponse) {
        emit(SingUpState.singUpSuccess(signupResponse));
      },
      failure: (error) {
        emit(SingUpState.singUpError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
