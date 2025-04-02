import 'package:doctor_app/core/theme/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomTermsAndConditions extends StatelessWidget {
  const CustomTermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By signing up, you agree to our ',
        style: AppTextStyles.font13GrayRegular,
        children: <TextSpan>[
          TextSpan(
            text: 'Terms of Service',
            style: AppTextStyles.font13DarkBlueMedium,
          ),
          TextSpan(
            text: ' and ',
            style: AppTextStyles.font13GrayRegular.copyWith(height: 1.5),
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: AppTextStyles.font13DarkBlueMedium,
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    // Handle privacy policy tap
                  },
          ),
        ],
      ),
    );
  }
}
