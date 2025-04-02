import 'package:doctor_app/core/helper/extenstions.dart';
import 'package:doctor_app/core/theme/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomAlreadyHaveAccount extends StatelessWidget {
  const CustomAlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: AppTextStyles.font13DarkBlueRegular,
        text: 'Already have an account? ',
        children: <TextSpan>[
          TextSpan(
            text: 'Sign In',
            style: AppTextStyles.font13BlueSemiBold,
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    context.pushNamed('/signin');
                  },
          ),
        ],
      ),
    );
  }
}
