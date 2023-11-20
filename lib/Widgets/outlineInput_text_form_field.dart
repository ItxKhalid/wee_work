import 'package:flutter/material.dart';

import '../Utils/app_style.dart';
import '../Utils/color_constant.dart';
import 'customtext.dart';

// ignore: must_be_immutable
class MyTextFieldRound extends StatefulWidget {
  final TextEditingController? controller;

  final FormFieldValidator<String>? validator;
  final bool? obscureText;
  final String? hint;
  final String? formTitle;

  final Widget? Sicon;
  final Widget? Picon;

  TextInputType? keyBoardType1;

  MyTextFieldRound(
      {Key? key,
      this.keyBoardType1,
      this.controller,
      this.validator,
      this.formTitle,
      this.obscureText,
      this.Sicon,
      this.Picon,
      this.hint})
      : super(key: key);

  @override
  State<MyTextFieldRound> createState() => _MyTextFieldRoundState();
}

class _MyTextFieldRoundState extends State<MyTextFieldRound> {
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: CustomText(
              textStyle: AppStyle.textStyle14w400Black50,
              title: widget.formTitle!),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)
          ),
          child: TextFormField(
            controller: widget.controller,
            validator: widget.validator,
            focusNode: _focusNode,
            keyboardType: widget.keyBoardType1,
            obscureText: widget.obscureText!,
            obscuringCharacter: '*',
            decoration: InputDecoration(
                focusColor: AppColors.mainColor,
                suffixIcon: widget.Sicon,
                prefixIcon: widget.Picon,
                hintText: widget.hint,
                hintStyle: AppStyle.textStyle16w500black,
                border: OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(30))),
          ),
        ),
      ],
    );
  }
}
