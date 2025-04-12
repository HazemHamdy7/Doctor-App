import 'package:doctor_app/core/helper/gap.dart';
import 'package:doctor_app/core/theme/app_colors_manger.dart';
import 'package:doctor_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacters;
  final bool hasNumber;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasLowerCase,
    required this.hasUpperCase,
    required this.hasSpecialCharacters,
    required this.hasNumber,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        gapH(2),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        gapH(2),
        buildValidationRow(
          'At least 1 special character',
          hasSpecialCharacters,
        ),
        gapH(2),
        buildValidationRow('At least 1 number', hasNumber),
        gapH(2),
        buildValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(radius: 2.5, backgroundColor: AppColorsManager.gray),
        gapW(6),
        Text(
          text,
          style: AppTextStyles.font13DarkBlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color:
                hasValidated
                    ? AppColorsManager.gray
                    : AppColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
