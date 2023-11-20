import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {

   double? width;
   double? height;
   Color? colors;
   Widget? widget;

   CustomContainer({this.width, this.height, this.colors, this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(50),
      ),
      child: widget,
    );
  }
}
