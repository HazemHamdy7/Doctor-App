import 'package:doctor_app/core/theme/app_text_styles.dart';
import 'package:doctor_app/core/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomForgetPassword extends StatelessWidget {
  const CustomForgetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
       crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
          activeColor: Colors.blue,
        ),
        CustomText(
          text: 'Remember me',
          style: AppTextStyles.font14GrayRegular,
        ),
        Spacer(),
        CustomText(
          text: 'Forget Password?',
          style: AppTextStyles.font13BlueRegular,
        ),
      ],
    );
  }
}
