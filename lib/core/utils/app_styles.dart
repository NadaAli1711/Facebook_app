import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppStyles {
  static const TextStyle loginButtonStyle = TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: AppColors.white);
  static const TextStyle createAccountButtonStyle = TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: AppColors.blue);
  static const TextStyle forgottenPasswordButtonStyle = TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: AppColors.grey);
  static const TextStyle textFormStyle = TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: AppColors.grey);
}