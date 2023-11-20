import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:weework/View/Home/home_view.dart';
import '../../Utils/app_style.dart';
import '../../Utils/color_constant.dart';
import '../../Utils/image_constant.dart';
import '../../Utils/my_size.dart';
import '../bottomnavigationbar_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () async {
      Get.to(()  =>  const BottomNavigationBarView());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset(AppImages.NameLogo,width: MySize.size280,height: MySize.size280)),
          ],
        ),
      ),
    );
  }
}
