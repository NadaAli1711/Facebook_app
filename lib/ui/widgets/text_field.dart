import 'package:flutter/material.dart';
import '../../core/utils/app_colors.dart';

class CustomTextField extends StatelessWidget{
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(fillColor: FacebookColors.lightGrey,
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: FacebookColors.red,width: 2),
              gapPadding: 16
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: FacebookColors.grey,width: 2),
              gapPadding: 16
          )
      ),
      style: TextStyle(
          color: FacebookColors.grey,
          fontWeight: FontWeight.w400,
          fontSize: 16
      ),

    );
  }

}