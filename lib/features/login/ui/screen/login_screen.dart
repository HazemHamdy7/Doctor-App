import 'package:doctor_app/core/helper/gap.dart';
import 'package:doctor_app/core/theme/app_text_styles.dart';
import 'package:doctor_app/core/widgets/custom_button.dart';
import 'package:doctor_app/core/widgets/custom_text.dart';
import 'package:doctor_app/features/login/data/model/login_request_body.dart';
import 'package:doctor_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_app/features/login/ui/widget/custom_do_not_have_account.dart';
import 'package:doctor_app/features/login/ui/widget/custom_forget_password.dart';
import 'package:doctor_app/features/login/ui/widget/custom_terms_and_conditions.dart';
import 'package:doctor_app/features/login/ui/widget/email_and_password.dart';
import 'package:doctor_app/features/login/ui/widget/login_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Welcome Back',
                  style: AppTextStyles.font24BlueBold,
                ),
                gapH(10.h),
                CustomText(
                  textAlign: TextAlign.start,
                  text:
                      'we are happy  to see you again , please login to your account Doctor App and continue your work on Doctor App  ',
                  style: AppTextStyles.font14GrayRegular,
                ),
                gapH(36.h),

                Column(
                  children: [
                    const EmailAndPassword(),

                    gapH(24.h),

                    CustomForgetPassword(),
                    gapH(24.h),
                    CustomButton(
                      buttonText: 'Login',
                      textStyle: AppTextStyles.font16WhiteMedium,
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                    ),
                    gapH(50.h),
                    CustomTermsAndConditions(),
                    gapH(24.h),
                    CustomDoNotHaveAccount(),
                    const LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState(
        LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ),
      );
    }
  }
}
