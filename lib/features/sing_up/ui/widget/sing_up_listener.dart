import 'package:doctor_app/core/helper/extenstions.dart';
import 'package:doctor_app/core/routing/router.dart';
import 'package:doctor_app/core/theme/app_colors_manger.dart';
import 'package:doctor_app/core/theme/app_text_styles.dart';
import 'package:doctor_app/features/sing_up/logic/cubit/sing_up_cubit.dart';
import 'package:doctor_app/features/sing_up/logic/cubit/sing_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SingUpCubit, SingUpState>(
      listenWhen:
          (previous, current) =>
              current is SingUpLoading ||
              current is SingUpSuccess ||
              current is SingUpError,
      listener: (context, state) {
        state.whenOrNull(
          singUpLoading: () {
            showDialog(
              context: context,
              builder:
                  (context) => const Center(
                    child: CircularProgressIndicator(
                      color: AppColorsManager.mainBlue,
                    ),
                  ),
            );
          },
          singUpSuccess: (signupResponse) {
            context.pop();
            showSuccessDialog(context);
          },
          singUpError: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Signup Successful'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Congratulations, you have signed up successfully!'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                disabledForegroundColor: Colors.grey.withOpacity(0.38),
              ),
              onPressed: () {
                context.pushNamed(Routes.login);
              },
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            icon: const Icon(Icons.error, color: Colors.red, size: 32),
            content: Text(error, style: AppTextStyles.font15DarkBlueMedium),
            actions: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text('Got it', style: AppTextStyles.font14BlueSemiBold),
              ),
            ],
          ),
    );
  }
}
