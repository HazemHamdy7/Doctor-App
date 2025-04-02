import 'package:doctor_app/core/helper/extenstions.dart';
import 'package:doctor_app/core/routing/router.dart';
import 'package:doctor_app/core/theme/app_colors_manger.dart';
import 'package:doctor_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.login);
      },
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: Size(double.infinity, 52),
        backgroundColor: AppColorsManager.mainBlue,
      ),
      child: Text('Get Started', style: AppTextStyles.font16WhiteSemibold),
    );
  }
}
