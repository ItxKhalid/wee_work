import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Utils/app_style.dart';
import '../Utils/my_size.dart';
import 'customtext.dart';

class CustomButton extends StatelessWidget {
  void Function() ontap;
  String title;
  Color? color;
  double? height;
  double? width;
  TextStyle? AppStyle;

  CustomButton(
      {Key? key,
      required this.title,
      required this.ontap,
      this.height= 58,
      this.width=double.infinity,
      this.color,
      this.AppStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(110),
        ),
        child: Center(
          child: CustomText(
              textStyle: AppStyle, title: title),
        ),
      ),
    );
  }
}
Widget customButton({
  bool showText= true,
  String ? text,
  Color color = Colors.blue,
  FontWeight fontWeight = FontWeight.normal ,
  double fontSize = 12,
  Function()? ontap,
  Color fontColor =Colors.grey,
  // String? image,
  double height = 13,
  double width =13,
  // bool withbetweensize = true,
  double betweenwidth = 10,
  double borderRadius =8,
  Widget ? widget,
  Color borderColor = Colors.red
})
{
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor,)
    ),
    child: MaterialButton(
      elevation: 0,
      highlightElevation: 0,
      hoverElevation: 0,
      focusElevation: 0,
      minWidth: Get.width,

      onPressed:ontap,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          //   if(image!=null)  Image.asset(image!,height: MySize.scaleFactorHeight*height,width: MySize.scaleFactorWidth*width,),
          //   withbetweensize? SizedBox ( width: MySize.scaleFactorWidth*betweenwidth,):Container(),
          showText?
          CustomText(title: text!,textStyle: TextStyle(fontWeight: fontWeight,fontSize: fontSize,color: fontColor)):Container(child: widget,),

        ],
      ),
    ),
  );
}
Widget textButton({String ?text,double fontSize = 14,FontWeight fontWeight = FontWeight.w400,Color color = Colors.blue,Function ?onTap}){
  return TextButton(
      onPressed: (){
        onTap!();
      },
      child: Text(text!,style: TextStyle(fontSize:  MySize.scaleFactorHeight*fontSize,fontWeight:fontWeight,color: color),)
  );

}