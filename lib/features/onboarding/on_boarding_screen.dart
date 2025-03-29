import 'package:doctor_app/core/theme/app_text_styles.dart';
import 'package:doctor_app/core/widgets/get_started_button.dart';
import 'package:doctor_app/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:doctor_app/features/onboarding/widgets/doctor_logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                DoctorLogoAndName(),
                SizedBox(height: 30.h),
                DoctorImageAndText(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Column(
                    children: [
                      Text(
                        'Book your appointment with the best doctors in your area and get the best care possible',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.font13GrayRegular,
                      ),

                      SizedBox(height: 30.h),
                      GetStartedButton(),
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
