import 'package:flutter/material.dart';

import '../Utils/app_style.dart';
import '../Utils/color_constant.dart';
import 'customtext.dart';

// ignore: must_be_immutable
class MyTextField extends StatefulWidget {
  final TextEditingController? controller;

  final FormFieldValidator<String>? validator;
  final bool? obscureText;
  final String? hint;
  final String? formTitle;

  final IconData? icon;

  TextInputType? keyBoardType1;

  MyTextField(
      {Key? key,
      this.keyBoardType1,
      this.controller,
      this.validator,
      this.formTitle,
      this.obscureText,
      this.icon,
      this.hint})
      : super(key: key);

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    super.dispose();
  }

  void _onFocusChange() {
    if (_focusNode.hasFocus) {
      // TextField has focus, scroll to its position
      Scrollable.ensureVisible(context, alignment: 0.5);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
            textStyle: AppStyle.textStyle14w400Black50,
            title: widget.formTitle!
        ),
        TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          focusNode: _focusNode,
          keyboardType: widget.keyBoardType1,
          obscureText: widget.obscureText!,
          decoration: InputDecoration(
              prefixIcon: Icon(
                widget.icon,
                color: AppColors.mainColor,
              ),
              hintText: widget.hint,
            focusedBorder: const OutlineInputBorder( borderSide: BorderSide(color: Colors.yellow))
          ),
        ),
      ],
    );
  }
}
