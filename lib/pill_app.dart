import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:pill2/core/routing/app_router.dart';
import 'package:pill2/core/routing/routs.dart';
import 'package:pill2/core/theming/colors.dart';

import 'package:sizer/sizer.dart';

class PillReminder extends StatelessWidget {
  final EAppRouter? approuting;
  const PillReminder({super.key, required this.approuting});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: "Pill Reminder",
        theme: ThemeData.dark().copyWith(
          primaryColor: AppColors.kPrimaryColor,
          scaffoldBackgroundColor: AppColors.kScaffouldColor,
          appBarTheme: AppBarTheme(
              toolbarHeight: 10.h,
              backgroundColor: AppColors.kScaffouldColor,
              elevation: 0,
              iconTheme: IconThemeData(
                  size: 20.sp, color: AppColors.kSecoundaryColor)),
          textTheme: TextTheme(
              // headlineMedium: ,
              // headlineSmall: ,
              headlineLarge: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w800,
                  color: AppColors.kTextColor),
              headlineMedium: GoogleFonts.poppins(
                  fontSize: 16.sp,
                  // fontWeight: FontWeight.w900,
                  color: AppColors.kTextColor)),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: ERouts.homeScreen,
        onGenerateRoute: approuting?.generateRouter,
      );
    });
  }
}
