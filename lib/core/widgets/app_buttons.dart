part of '../widgets.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => Navigator.of(context).pop(),
      child: Container(
        padding: EdgeInsets.only(
          left: 16.sp,
          top: 14.sp,
          bottom: 14.sp,
          right: 12.sp,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.sp)),
          border: Border.all(color: Colors.white, width: 1),
        ),
        child: Icon(Icons.arrow_back_ios, size: 16.sp, color: Colors.white),
      ),
    );
  }
}

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.width,
    this.height,
    this.onTap,
    required this.text,
    this.textColor,
    this.buttonColor,
    this.icon,
    this.iconData,
    this.iconBeforeText = false,
    this.border,
    this.fontSize,
    this.fontWeight,
    this.isEnable = true,
    this.gradient,
    this.isLoading = false,
    this.loadingColor,
    this.borderRadius = 0.0,
  });

  final double? width;
  final double? height;
  final Function()? onTap;
  final String text;
  final Color? textColor;
  final Color? buttonColor;
  final bool? icon;
  final Widget? iconData;
  final bool iconBeforeText;
  final BoxBorder? border;
  final FontWeight? fontWeight;
  final double? fontSize;
  final bool isEnable;
  final Gradient? gradient;
  final bool isLoading;
  final Color? loadingColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    Widget buttonWidget = GestureDetector(
      behavior: HitTestBehavior.deferToChild,
      onTap: isLoading ? null : onTap,
      child: Container(
        height: height ?? 55,
        width: width ?? 100.w,
        decoration: BoxDecoration(
          border: border,
          color: (isEnable && !isLoading)
              ? buttonColor ?? AppColors.primaryColor
              : AppColors.primaryColor,
          /*   gradient: (isEnable && !isLoading)
              ? gradient ??
                    LinearGradient(
                      colors: [Color(0xFFFF4036), Color(0xFF7F0007)],
                    )
              : null, */
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        margin: EdgeInsets.only(top: 1.h, bottom: 2.h),
        child: isLoading
            ? Center(
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(
                    strokeWidth: 2.5,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      loadingColor ?? AppColors.white,
                    ),
                  ),
                ),
              )
            : (icon ?? true)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: iconBeforeText
                    ? [
                        iconData ?? SizedBox(),
                        const SizedBox(width: 5),
                        Text(
                          text,
                          style: Theme.of(context).textTheme.bodySmall!
                              .copyWith(
                                fontFamily: "Lato",
                                fontSize: fontSize ?? 15,
                                fontWeight: fontWeight ?? FontWeight.w700,
                                color: textColor ?? AppColors.white,
                              ),
                        ),
                      ]
                    : [
                        Text(
                          text,
                          style: Theme.of(context).textTheme.bodySmall!
                              .copyWith(
                                fontFamily: "Lato",
                                fontSize: fontSize ?? 15,
                                fontWeight: fontWeight ?? FontWeight.w600,
                                color: textColor ?? AppColors.white,
                              ),
                        ),
                        const SizedBox(width: 5),
                        iconData ?? SizedBox(),
                      ],
              )
            : Center(
                child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontFamily: "Lato",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: textColor ?? AppColors.white,
                  ),
                ),
              ),
      ),
    );

    return buttonWidget;
  }
}
