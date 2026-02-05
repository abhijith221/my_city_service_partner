part of '../core.dart';

final String _primaryFamily = 'Lato';
final String _secondaryFamily = 'Lato';
final Color _color = AppColors.white;

// Font weight enum for easy usage
enum AppFontWeight {
  thin, // 100
  extraLight, // 200
  light, // 300
  normal, // 400
  medium, // 500
  semiBold, // 600
  bold, // 700
  extraBold, // 800
  black, // 900
}

extension AppFontWeightExtension on AppFontWeight {
  FontWeight get weight {
    switch (this) {
      case AppFontWeight.thin:
        return FontWeight.w100;
      case AppFontWeight.extraLight:
        return FontWeight.w200;
      case AppFontWeight.light:
        return FontWeight.w300;
      case AppFontWeight.normal:
        return FontWeight.w400;
      case AppFontWeight.medium:
        return FontWeight.w500;
      case AppFontWeight.semiBold:
        return FontWeight.w600;
      case AppFontWeight.bold:
        return FontWeight.w700;
      case AppFontWeight.extraBold:
        return FontWeight.w800;
      case AppFontWeight.black:
        return FontWeight.w900;
    }
  }
}

/// Complete Typography System from Figma
class AppTypography {
  // ==================== BUTTON TEXT ====================
  static TextStyle buttonText1 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    color: _color,
  );

  static TextStyle buttonText2 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 13.sp,
    fontWeight: FontWeight.w600,
    color: _color,
  );

  static TextStyle buttonText3 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: _color,
  );

  // ==================== TITLE SEMIBOLD ====================
  static TextStyle titleSemiboldBig = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 28.sp,
    fontWeight: FontWeight.w600,
    color: _color,
  );

  static TextStyle titleSemibold1 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: _color,
  );

  static TextStyle titleSemibold2 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: _color,
  );

  static TextStyle titleSemibold3 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: _color,
  );

  static TextStyle titleSemibold4 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: _color,
  );

  static TextStyle titleSemibold5 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: _color,
  );

  static TextStyle titleSemibold6 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    color: _color,
  );

  static TextStyle titleSemibold7 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 13.5.sp,
    fontWeight: FontWeight.w600,
    color: _color,
  );

  static TextStyle titleSemibold8 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    color: _color,
  );

  static TextStyle titleSemibold9 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 11.sp,
    fontWeight: FontWeight.w600,
    color: _color,
  );

  // ==================== TITLE MEDIUM ====================
  static TextStyle titleMediumBig = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 28.sp,
    fontWeight: FontWeight.w500,
    color: _color,
  );

  static TextStyle titleMedium1 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
    color: _color,
  );

  static TextStyle titleMedium2 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    color: _color,
  );

  static TextStyle titleMedium3 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: _color,
  );

  static TextStyle titleMedium4 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: _color,
  );

  static TextStyle titleMedium5 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: _color,
  );

  static TextStyle titleMedium6 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    color: _color,
  );

  static TextStyle titleMedium7 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    color: _color,
  );

  static TextStyle titleMedium8 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: _color,
  );

  static TextStyle titleMedium9 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: _color,
  );

  // ==================== SECONDARY REGULAR ====================
  static TextStyle secondaryRegular16 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryRegular15 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryRegular14 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 14.5.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryRegular13 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryRegular12 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 14.2.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryRegular11 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 11.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryRegular10 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 13.5.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryRegular9 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 9.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryRegular8 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 8.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryRegular7 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 7.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryRegular6 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 6.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryRegular5 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 5.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.01,
    color: _color,
  );

  // ==================== SECONDARY MEDIUM ====================
  static TextStyle secondaryMedium16 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryMedium15 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 15.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryMedium14 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryMedium13 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 13.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryMedium12 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 13.5.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryMedium11 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 11.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryMedium10 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryMedium9 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 9.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryMedium8 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 8.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryMedium7 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 7.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryMedium6 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 6.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.01,
    color: _color,
  );

  static TextStyle secondaryMedium5 = TextStyle(
    fontFamily: _secondaryFamily,
    fontSize: 5.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: -0.01,
    color: _color,
  );

  // ==================== BOLD TITLE ====================
  static TextStyle boldTitle1 = TextStyle(
    fontFamily: _primaryFamily,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: _color,
  );
}

/// Quick and easy-to-use text widget with all Figma styles
class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final AppFontWeight? weight;
  final double? fontSize;
  final double? letterSpacing;
  final double? height;
  final TextCase? textCase;

  const AppText({
    super.key,
    required this.text,
    required this.style,
    this.color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.weight,
    this.fontSize,
    this.letterSpacing,
    this.height,
    this.textCase,
  });

  // ==================== BUTTON TEXT ====================
  factory AppText.buttonText1({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.buttonText1,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
    textCase: TextCase.title,
  );

  factory AppText.buttonText2({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.buttonText2,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
    textCase: TextCase.title,
  );

  factory AppText.buttonText3({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.buttonText3,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  // ==================== TITLE SEMIBOLD ====================
  factory AppText.titleSemiboldBig({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleSemiboldBig,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.titleSemibold1({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleSemibold1,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.titleSemibold2({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleSemibold2,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.titleSemibold3({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleSemibold3,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.titleSemibold4({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleSemibold4,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.titleSemibold5({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleSemibold5,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.titleSemibold6({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleSemibold6,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.titleSemibold7({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleSemibold7,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.titleSemibold8({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleSemibold8,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.titleSemibold9({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleSemibold9,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  // ==================== TITLE MEDIUM ====================
  factory AppText.titleMediumBig({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleMediumBig,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.titleMedium1({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleMedium1,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.titleMedium2({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleMedium2,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.titleMedium3({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleMedium3,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.titleMedium4({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleMedium4,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.titleMedium5({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleMedium5,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.titleMedium6({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleMedium6,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.titleMedium7({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleMedium7,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.titleMedium8({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleMedium8,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.titleMedium9({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.titleMedium9,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  // ==================== SECONDARY REGULAR ====================
  factory AppText.secondaryRegular16({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.secondaryRegular16,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    overflow: overflow,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.secondaryRegular14({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.secondaryRegular14,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    overflow: overflow,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.secondaryRegular12({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.secondaryRegular12,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    overflow: overflow,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.secondaryRegular10({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.secondaryRegular10,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    overflow: overflow,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  // ==================== SECONDARY MEDIUM ====================
  factory AppText.secondaryMedium16({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.secondaryMedium16,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    overflow: overflow,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.secondaryMedium14({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.secondaryMedium14,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    overflow: overflow,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  factory AppText.secondaryMedium12({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    TextOverflow? overflow,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.secondaryMedium12,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    overflow: overflow,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  // ==================== BOLD TITLE ====================
  factory AppText.boldTitle1({
    required String text,
    Color? color,
    TextAlign? textAlign,
    int? maxLines,
    AppFontWeight? weight,
    double? fontSize,
    double? height,
  }) => AppText(
    text: text,
    style: AppTypography.boldTitle1,
    color: color,
    textAlign: textAlign,
    maxLines: maxLines,
    weight: weight,
    fontSize: fontSize,
    height: height,
  );

  String _applyTextCase(String text) {
    if (textCase == TextCase.title) {
      return text.toUpperCase();
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _applyTextCase(text),
      style: style.copyWith(
        color: color,
        fontWeight: weight?.weight,
        fontSize: fontSize,
        letterSpacing: letterSpacing,
        height: height,
      ),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

enum TextCase { title, original }

// Legacy backward-compatible function
Text appText({
  required String text,
  TextStyle? style,
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  AppFontWeight? weight,
  TextAlign? textAlign,
  int? maxLines,
  TextOverflow? overflow,
  double? wordSpacing,
  double? letterSpacing,
  double? height,
}) {
  final baseStyle = style ?? AppTypography.secondaryRegular14;
  final effectiveWeight = weight?.weight ?? fontWeight;

  return Text(
    text,
    style: baseStyle.copyWith(
      color: color,
      fontSize: fontSize,
      fontWeight: effectiveWeight,
      wordSpacing: wordSpacing,
      letterSpacing: letterSpacing,
      height: height,
    ),
    textAlign: textAlign,
    maxLines: maxLines,
    overflow: overflow ?? TextOverflow.ellipsis,
  );
}

// Lightweight text style helper used across the app where a TextTheme is
// expected. This mirrors the usage pattern in other screens (e.g. HomeTab)
// where code calls `AppTextTheme().getStyle(AppTextStyle.bodyMedium)`.
enum AppTextStyle {
  bodySmall,
  bodyMedium,
  bodyLarge,
  bodyLargeBold,
  titleSmall,
  titleMedium,
  titleLarge,
  labelSmall,
  labelMedium,
  labelLarge,
  headlineSmall,
  headlineMedium,
  headlineLarge,
}

class AppTextTheme {
  AppTextTheme();

  // A lightweight TextTheme using our AppTypography styles.
  final TextTheme lightTextTheme = TextTheme(
    bodySmall: AppTypography.secondaryRegular10,
    bodyMedium: AppTypography.secondaryRegular14,
    bodyLarge: AppTypography.secondaryRegular16,
    titleSmall: AppTypography.titleSemibold7,
    titleMedium: AppTypography.titleSemibold4,
    titleLarge: AppTypography.titleSemibold1,
    labelSmall: AppTypography.secondaryRegular10,
    labelMedium: AppTypography.secondaryMedium12,
    labelLarge: AppTypography.secondaryRegular14,
    headlineSmall: AppTypography.titleSemibold3,
    headlineMedium: AppTypography.titleSemibold2,
    headlineLarge: AppTypography.titleSemiboldBig,
  );

  // A bold variant for bodyLarge when callers ask for the bold form.
  TextStyle get bodyLargeBold =>
      AppTypography.secondaryRegular16.copyWith(fontWeight: FontWeight.w700);

  TextStyle getStyle(AppTextStyle style) {
    switch (style) {
      case AppTextStyle.bodySmall:
        return lightTextTheme.bodySmall!;
      case AppTextStyle.bodyMedium:
        return lightTextTheme.bodyMedium!;
      case AppTextStyle.bodyLarge:
        return lightTextTheme.bodyLarge!;
      case AppTextStyle.bodyLargeBold:
        return bodyLargeBold;
      case AppTextStyle.titleSmall:
        return lightTextTheme.titleSmall!;
      case AppTextStyle.titleMedium:
        return lightTextTheme.titleMedium!;
      case AppTextStyle.titleLarge:
        return lightTextTheme.titleLarge!;
      case AppTextStyle.labelSmall:
        return lightTextTheme.labelSmall!;
      case AppTextStyle.labelMedium:
        return lightTextTheme.labelMedium!;
      case AppTextStyle.labelLarge:
        return lightTextTheme.labelLarge!;
      case AppTextStyle.headlineSmall:
        return lightTextTheme.headlineSmall!;
      case AppTextStyle.headlineMedium:
        return lightTextTheme.headlineMedium!;
      case AppTextStyle.headlineLarge:
        return lightTextTheme.headlineLarge!;
    }
  }
}
