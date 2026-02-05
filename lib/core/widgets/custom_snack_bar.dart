part of '../widgets.dart';

enum SnackBarType { success, error, message }

appSnackBar({
  required BuildContext context,
  required String message,
  required SnackBarType snackBarType,
}) {
  return ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.zero,
        content: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19.sp),
            color: SnackBarType.message == snackBarType
                ? null
                : snackBarType == SnackBarType.success
                ? null
                : AppColors.red,
            gradient:
                SnackBarType.message == snackBarType ||
                    SnackBarType.success == snackBarType
                ? LinearGradient(
                    colors: [AppColors.primaryColor, AppColors.primaryDim],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  )
                : null,
          ),

          padding: EdgeInsets.all(14.sp),
          child: Center(
            child: appText(
              text: message,
              color: AppColors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        duration: const Duration(seconds: 2),
      ),
    );
}


  // decoration: BoxDecoration(
  //           color:
  //               SnackBarType.message == snackBarType
  //                   ? null
  //                   : snackBarType == SnackBarType.success
  //                   ? ColorPalette.approvedColor
  //                   : ColorPalette.red,
  //           gradient:
  //               SnackBarType.message == snackBarType
  //                   ? LinearGradient(
  //                     colors: [
  //                       ColorPalette.buttonColor1,
  //                       ColorPalette.buttonColor2,
  //                     ],
  //                     begin: Alignment.centerLeft,
  //                     end: Alignment.centerRight,
  //                   )
  //                   : null,