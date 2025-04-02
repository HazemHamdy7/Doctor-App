import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/core/routing/router.dart';
import 'package:doctor_app/core/theme/app_colors_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doctor App',
        theme: ThemeData(
          primaryColor: AppColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: Routes.onBoardingScreen,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter().generateRoute,
      ),
    );
  }
}
