import 'package:doctor_app/core/constants/assets.dart';
import 'package:doctor_app/core/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorLogoAndName extends StatelessWidget {
  const DoctorLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(Assets.svgsDocdocLogo),
        SizedBox(width: 10.w),
        Text('Doctor App', style: AppTextStyles.font24BlackBold),
      ],
    );
  }
}
