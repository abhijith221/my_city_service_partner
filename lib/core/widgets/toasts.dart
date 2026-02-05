part of '../widgets.dart';

void errortoast(String msg) {
  Fluttertoast.showToast(
    fontSize: 14,
    msg: msg,
    backgroundColor: AppColors.primaryColor,
    textColor: AppColors.white,
  );
}

void successtoast(String msg) {
  Fluttertoast.showToast(
    fontSize: 14,
    msg: msg,
    backgroundColor: AppColors.green,
    textColor: AppColors.white,
  );
}
