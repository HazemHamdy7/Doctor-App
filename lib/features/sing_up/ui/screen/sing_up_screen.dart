import 'package:doctor_app/core/helper/gap.dart';
import 'package:doctor_app/core/theme/app_text_styles.dart';
import 'package:doctor_app/core/widgets/custom_button.dart';
import 'package:doctor_app/features/login/ui/widget/custom_terms_and_conditions.dart';
import 'package:doctor_app/features/sing_up/logic/cubit/sing_up_cubit.dart';
import 'package:doctor_app/features/sing_up/ui/widget/already_have_an_account.dart';
import 'package:doctor_app/features/sing_up/ui/widget/sing_up_form.dart';
import 'package:doctor_app/features/sing_up/ui/widget/sing_up_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create Account', style: AppTextStyles.font24BlueBold),
                gapH(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: AppTextStyles.font14GrayRegular,
                ),
                gapH(36),
                Column(
                  children: [
                    const SignupForm(),
                    gapH(40),
                    CustomButton(
                      buttonText: "Create Account",
                      textStyle: AppTextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    gapH(16),
                    const CustomTermsAndConditions(),
                    gapH(30),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SingUpCubit>().formKey.currentState!.validate()) {
      context.read<SingUpCubit>().emitSingUpState();
    }
  }
}
