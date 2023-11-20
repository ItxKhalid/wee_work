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

  final Widget? icon;

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
      crossAxisAlignment: CrossAxisAlignment.start,
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
          obscuringCharacter: '*',
          decoration: InputDecoration(
            focusColor: AppColors.mainColor,
              suffixIcon: widget.icon,
              hintText: widget.hint,
            border: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.mainColor)),
            focusedBorder: const UnderlineInputBorder( borderSide: BorderSide(color: Colors.yellow)),
            enabledBorder: const UnderlineInputBorder( borderSide: BorderSide(color: Colors.yellow)),
          ),
        ),
      ],
    );
  }
}
Widget textField({
  bool showtext =true,
  String? hintText,
  FontWeight fontWeight = FontWeight.w400,
  TextEditingController? controller,
  Function ? validator,
  double fontSize = 14,
  Color bordercolor = Colors.black,
  int maxLines  = 1,
  bool ?isprefixImage=false,
  String? prefixImage ,
  bool? suffix = false,
  bool enableborder = false,
  Widget? suffixWidget,
  bool? isObscure = false,
  Color fillcolor  =Colors.white,
  bool filled  = false,
  double borderRadius =8,
  bool nonborder = false,
  Function? ontap,
  bool Ontap = false,
  bool isKeyboard = false,
  Function? onChanged,
  bool showErrorBorder = false,
  double errorBorderWidth = 2.0,
  bool isPrefixIcon = true,
  bool focusBorder = false,
  IconData prefixicon = Icons.mail,
})
{

  return TextFormField(
    onTap: Ontap? (){
      ontap!();
    }:null,
    onChanged: (text){
      onChanged!();
    },
    controller: controller,
    validator: (value) {
      return validator!(value);
    },
    keyboardType:isKeyboard? TextInputType.number:TextInputType.text,
    maxLines: maxLines,
    obscureText: isObscure!,
    cursorColor: focusBorder? Colors.yellow:null,
    style: focusBorder?  const TextStyle(color: Colors.yellow):null,
    decoration: InputDecoration(
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red,width: 2),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      filled: filled,
      fillColor:fillcolor,
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red,width: 2),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      enabledBorder:enableborder?  OutlineInputBorder(
        borderSide: BorderSide(color: bordercolor,width: 2),
        borderRadius: BorderRadius.circular(borderRadius),
      ): OutlineInputBorder(
        borderSide: BorderSide(color: bordercolor),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),

      hintText: showtext?  hintText:null,
      prefixIcon: isprefixImage!? Image.asset(prefixImage!,scale: 4.5,color: Colors.grey.withOpacity(0.75),):null,

      focusedBorder:enableborder?  OutlineInputBorder(
        borderSide: BorderSide(color: bordercolor,width: 2),
        borderRadius: BorderRadius.circular(borderRadius),
      ): OutlineInputBorder(
        borderSide: BorderSide(color: bordercolor,width: 2),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      suffixIcon: suffix! ? suffixWidget : null,
      hintStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: fontSize,color: Colors.grey,height: 1,fontFamily: 'Poppins'),
    ),
  );
}
