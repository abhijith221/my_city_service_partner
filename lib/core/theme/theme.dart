part of '../core.dart';

ThemeData appTheme() {
  return ThemeData(
    //textTheme: AppTextTheme().lightTextTheme,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
    scaffoldBackgroundColor: AppColors.black,
    dividerColor: AppColors.white,
    dividerTheme: DividerThemeData(color: AppColors.white, thickness: 0.5),
    fontFamily: 'Lato',
    dialogTheme: DialogThemeData(
      insetPadding: EdgeInsets.all(15.sp),
      actionsPadding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 0.sp),
    ),
    inputDecorationTheme: InputDecorationTheme(
      errorStyle: TextStyle(
        fontSize: 14.sp,
        fontFamily: 'Lato',
        fontWeight: FontWeight.w500,
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.white, width: 1.0),
      ),
    ),
    appBarTheme: AppBarTheme(
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.black,
      iconTheme: IconThemeData(color: AppColors.white),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.black,
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      menuStyle: MenuStyle(
        backgroundColor: WidgetStatePropertyAll(AppColors.black),
        elevation: WidgetStatePropertyAll(8),
        shadowColor: WidgetStatePropertyAll(
          AppColors.black7.withValues(alpha: 0.2),
        ),
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 12.sp, vertical: 8.sp),
        ),
        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.sp)),
        ),

        side: WidgetStatePropertyAll(
          BorderSide(color: AppColors.white, width: 1.0),
        ),
      ),
      textStyle: TextStyle(
        fontFamily: 'Lato',
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      ),
    ),
    useMaterial3: true,
  );
}

// TextTheme textTheme() {
//   TextStyle lightLatoTextStyle({
//     required double fontSize,
//     required FontWeight fontWeight,
//     required Color color,
//   }) => TextStyle(
//     fontFamily: 'Lato',
//     fontSize: fontSize,
//     fontWeight: fontWeight,
//     color: color,
//   );

//   TextStyle lightHeadTextStyle({
//     required double textSize,
//     required FontWeight fontWeight,
//     required Color color,
//   }) => TextStyle(
//     fontFamily: 'Lato',
//     fontSize: 20.sp,
//     fontWeight: fontWeight,
//     color: color,
//   );
//   return TextTheme(
//     bodyMedium: lightLatoTextStyle(
//       fontSize: 12.sp,
//       fontWeight: FontWeight.w400,
//       color: ColorPellete.black,
//     ),
//     bodyLarge: lightLatoTextStyle(
//       fontSize: 14.sp,
//       fontWeight: FontWeight.w600,
//       color: ColorPellete.black,
//     ),
//     bodySmall: lightLatoTextStyle(
//       fontSize: 10.sp,
//       fontWeight: FontWeight.w300,
//       color: ColorPellete.black,
//     ),
//     headlineSmall: lightHeadTextStyle(
//       textSize: 18.sp,
//       fontWeight: FontWeight.w600,
//       color: ColorPellete.black,
//     ),
//     headlineMedium: lightHeadTextStyle(
//       textSize: 22.sp,
//       fontWeight: FontWeight.w700,
//       color: ColorPellete.black,
//     ),
//     headlineLarge: lightHeadTextStyle(
//       textSize: 26.sp,
//       fontWeight: FontWeight.w700,
//       color: ColorPellete.black,
//     ),
//     displaySmall: lightLatoTextStyle(
//       fontSize: 10.sp,
//       fontWeight: FontWeight.w400,
//       color: ColorPellete.black,
//     ),
//     displayMedium: lightLatoTextStyle(
//       fontSize: 12.sp,
//       fontWeight: FontWeight.w500,
//       color: ColorPellete.black,
//     ),
//     displayLarge: lightLatoTextStyle(
//       fontSize: 14.sp,
//       fontWeight: FontWeight.w600,
//       color: ColorPellete.black,
//     ),
//     titleMedium: lightLatoTextStyle(
//       fontSize: 14.sp,
//       fontWeight: FontWeight.w600,
//       color: ColorPellete.black,
//     ),
//     titleSmall: lightLatoTextStyle(
//       fontSize: 12.sp,
//       fontWeight: FontWeight.w500,
//       color: ColorPellete.black,
//     ),
//     labelMedium: lightLatoTextStyle(
//       fontSize: 12.sp,
//       fontWeight: FontWeight.w500,
//       color: ColorPellete.black,
//     ),
//     labelSmall: lightLatoTextStyle(
//       fontSize: 10.sp,
//       fontWeight: FontWeight.w400,
//       color: ColorPellete.black,
//     ),
//     titleLarge: lightLatoTextStyle(
//       fontSize: 16.sp,
//       fontWeight: FontWeight.w600,
//       color: ColorPellete.black,
//     ),
//     labelLarge: lightLatoTextStyle(
//       fontSize: 14.sp,
//       fontWeight: FontWeight.w500,
//       color: ColorPellete.black,
//     ),
//   );
// }
