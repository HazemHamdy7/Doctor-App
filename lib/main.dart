import 'package:doctor_app/core/di/dependancy_injection.dart';
import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  setupGetIt();

  runApp(DoctorApp(appRouter: AppRouter()));
  // Remove the splash screen after the app is ready
  FlutterNativeSplash.remove();
}
