import 'package:flutter/material.dart';

import '../Utils/app_style.dart';
import '../Utils/color_constant.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {
        required this.controller,
        this.isObscureText = false,
        this.textInputType = TextInputType.text,
        this.hintText,
        this.hintStyle,
        this.validator,
        this.suffix,
        this.enabled = true,
        this.color
      });

  TextEditingController controller;
  bool enabled;
  bool? isObscureText;
  TextInputType? textInputType;
  String? hintText;
  TextStyle? hintStyle;
  FormFieldValidator<String>? validator;
  Widget? suffix;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.start,
      controller: controller,
      style: AppStyle.textStyle14w500Black,
      obscureText: isObscureText!,
      keyboardType: textInputType,
      decoration: InputDecoration(
        fillColor: color,
        filled: true,
        enabled: enabled,
        hintText: hintText,
        hintStyle: hintStyle,
        suffixIcon: suffix,
        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.brown))
      ),
      validator: validator,
    );
  }

}


