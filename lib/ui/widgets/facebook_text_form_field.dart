import 'package:facebook/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import '../../core/utils/app_colors.dart';

typedef Validator = String? Function(String?);

class FacebookTextFormField extends StatefulWidget {
  final TextEditingController textEditingController;
  final bool isPassword;
  final String hintText;
  final Validator validator;

  const FacebookTextFormField({
    super.key,
    required this.textEditingController,
    required this.hintText,
    this.isPassword = false,
    required this.validator,
  });

  @override
  State<FacebookTextFormField> createState() => _FacebookTextFormFieldState();
}

class _FacebookTextFormFieldState extends State<FacebookTextFormField> {
  bool passwordIsVisible = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      obscureText: widget.isPassword? passwordIsVisible : false,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        fillColor: AppColors.textBg,
        filled: true,
        hintText: widget.hintText,
        hintStyle: AppStyles.textFormStyle,
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    passwordIsVisible = !passwordIsVisible;
                  });
                },
                icon: Icon(
                  passwordIsVisible ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.grey,
                ),
              )
            : SizedBox(),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.red, width: 2),
          gapPadding: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.grey),
          gapPadding: 16,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.grey, width: 2),
          gapPadding: 16,
        ),
      ),
      style: AppStyles.textFormStyle,
    );
  }
}
