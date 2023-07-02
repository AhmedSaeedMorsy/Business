import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:micro_service_e_commerce/app/resources/styles_manager.dart';
import 'package:micro_service_e_commerce/app/resources/values_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getAppTheme() {
  return ThemeData(
    // main color

    // primarySwatch: MaterialColor(),
    primaryColor: ColorManager.primaryColorBlue,
    scaffoldBackgroundColor: ColorManager.white,
    //text theme
    appBarTheme: const AppBarTheme(
      elevation: AppSize.s0,
      centerTitle: true,
      color: ColorManager.white,
      iconTheme: IconThemeData(
        color: ColorManager.black,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorManager.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    textTheme: TextTheme(
      displayMedium: getMediumStyle(
        fontSize: FontSizeManager.s16.sp,
        color: ColorManager.primaryColorBlue,
      ),
      displayLarge: getMediumStyle(
        fontSize: FontSizeManager.s18.sp,
        color: ColorManager.black,
      ),
      displaySmall: getMediumStyle(
        fontSize: FontSizeManager.s12.sp,
        color: ColorManager.black,
      ),
      bodySmall: getRegularStyle(
        fontSize: FontSizeManager.s12.sp,
        color: ColorManager.darkGrey,
      ),
      bodyMedium: getMediumStyle(
        fontSize: FontSizeManager.s14.sp,
        color: ColorManager.white,
      ),
      bodyLarge: getMediumStyle(
        fontSize: FontSizeManager.s14.sp,
        color: ColorManager.primaryColorGreen,
      ),
      labelMedium: getMediumStyle(
        fontSize: FontSizeManager.s14.sp,
        color: ColorManager.darkGrey,
      ),
    ),
  );
}
