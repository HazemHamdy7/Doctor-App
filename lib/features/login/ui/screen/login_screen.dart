import 'package:doctor_app/core/helper/gap.dart';
import 'package:doctor_app/core/theme/app_colors_manger.dart';
import 'package:doctor_app/core/theme/app_text_styles.dart';
import 'package:doctor_app/core/widgets/custom_button.dart';
import 'package:doctor_app/core/widgets/custom_form_field.dart';
import 'package:doctor_app/core/widgets/custom_text.dart';
import 'package:doctor_app/features/login/ui/widget/custom_already_have_account.dart';
import 'package:doctor_app/features/login/ui/widget/custom_forget_password.dart';
import 'package:doctor_app/features/login/ui/widget/custom_terms_and_conditions.dart'
    show CustomTermsAndConditions;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  bool isObscureText = true;

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

                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomFormField(
                        validator: (p0) => null,

                        hintText: 'Email',
                        hintStyle: AppTextStyles.font14BlueSemiBold,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      gapH(20.h),
                      CustomFormField(
                        hintStyle: AppTextStyles.font14BlueSemiBold,
                        validator: (p0) => null,
                        hintText: 'Password',
                        keyboardType: TextInputType.number,
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child:
                              isObscureText
                                  ? const Icon(Icons.visibility_off_outlined)
                                  : const Icon(Icons.visibility_outlined),
                        ),
                      ),
                      gapH(24.h),

                      CustomForgetPassword(),
                      gapH(24.h),
                      CustomButton(
                        buttonText: 'Login',
                        textStyle: AppTextStyles.font16WhiteMedium,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Perform login action
                          }
                        },
                      ),
                      gapH(50.h),
                      CustomTermsAndConditions(),
                      gapH(24.h),
                      CustomAlreadyHaveAccount(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
