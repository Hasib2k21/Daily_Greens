import 'package:daily_greens/presentation/ui/screens/log_in_screen.dart';
import 'package:daily_greens/presentation/ui/screens/set_location.dart';
import 'package:daily_greens/presentation/ui/screens/sign_up_screen.dart';
import 'package:daily_greens/presentation/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'controller_binders.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
      initialBinding: ControllerBinders(),
      theme: ThemeData(
          colorSchemeSeed: AppColors.themeColor,
          scaffoldBackgroundColor: Colors.white,
          progressIndicatorTheme: const ProgressIndicatorThemeData(
            color: AppColors.themeColor,
          ),
          textTheme: const TextTheme(
            headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            hintStyle: TextStyle(fontWeight: FontWeight.w400),
            contentPadding: EdgeInsets.symmetric(horizontal: 1, vertical: 8),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.themeColor,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                textStyle: const TextStyle(fontSize: 16),
                fixedSize: const Size.fromWidth(double.maxFinite)),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
                foregroundColor: AppColors.themeColor,
                textStyle: const TextStyle(fontSize: 16)),
          ),
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500))),
    );
  }
}
