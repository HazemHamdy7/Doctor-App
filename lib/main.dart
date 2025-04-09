import 'package:doctor_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize any necessary services or plugins here
  await Future.delayed(const Duration(seconds: 2));

  runApp(const DoctorApp());
  // Remove the splash screen after the app is ready
  FlutterNativeSplash.remove();
}
