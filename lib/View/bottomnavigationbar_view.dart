import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:weework/Utils/my_size.dart';
import 'package:weework/View/Home/home_view.dart';

import '../Utils/color_constant.dart';
import '../Utils/image_constant.dart';

class BottomNavigationBarView extends StatefulWidget {
  const BottomNavigationBarView({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarView> createState() =>
      _BottomNavigationBarViewState();
}

class _BottomNavigationBarViewState extends State<BottomNavigationBarView> {
  final controller = PersistentTabController(initialIndex: 0);

  List<Widget> _screens() {
    return [
      const HomeView(),
      const HomeView(),
      const HomeView(),
      const HomeView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: PersistentTabView(
        bottomScreenMargin: 0,
        navBarHeight: 83,
        popAllScreensOnTapOfSelectedTab: true,
        handleAndroidBackButtonPress: false,
        itemAnimationProperties: const ItemAnimationProperties(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeIn
        ),
        // padding: NavBarPadding.symmetric(horizontal: 30,vertical: 10),
        screenTransitionAnimation: const ScreenTransitionAnimation(
            curve: Curves.easeInBack,
            animateTabTransition: true,
            duration: Duration(milliseconds: 800)),
        context,
        margin: const EdgeInsets.only(bottom: 20, left: 22, right: 22),
        // padding: NavBarPadding.symmetric(vertical: 14),
        popAllScreensOnTapAnyTabs: true,
        resizeToAvoidBottomInset: true,
        screens: _screens(),
        items: [
          PersistentBottomNavBarItem(
            icon: SvgPicture.asset(AppImages.home,
                height: MySize.size32, width: MySize.size32),
            activeColorPrimary: AppColors.mainColor,
            inactiveIcon: SvgPicture.asset(AppImages.home,
                color: Colors.white,
                height: MySize.size28,
                width: MySize.size28),
            activeColorSecondary: AppColors.black,
            title: 'Home',
            textStyle: const TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          PersistentBottomNavBarItem(
            icon: Image.asset(AppImages.menuFill,
                color: Colors.black,
                height: MySize.size30, width: MySize.size30),
            activeColorPrimary: AppColors.mainColor,
            inactiveIcon: Image.asset(AppImages.menuFill,
                color: Colors.white,
                height: MySize.size28,
                width: MySize.size28),
            activeColorSecondary: AppColors.black,
            title: 'Application',
            textStyle: const TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          PersistentBottomNavBarItem(
            icon: SvgPicture.asset(AppImages.home2,
                color: Colors.black,
                height: MySize.size24, width: MySize.size28),
            activeColorPrimary: AppColors.mainColor,
            inactiveIcon: SvgPicture.asset(AppImages.home2,
                // color: Colors.white,
                height: MySize.size24,
                width: MySize.size24),
            activeColorSecondary: AppColors.black,
            title: 'Store',
            textStyle: const TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          PersistentBottomNavBarItem(
            icon: SvgPicture.asset(AppImages.profile,
                color: Colors.black,
                height: MySize.size24, width: MySize.size24),
            activeColorPrimary: AppColors.mainColor,
            inactiveIcon: SvgPicture.asset(AppImages.profile,
                height: MySize.size24, width: MySize.size24),
            activeColorSecondary: AppColors.black,
            title: 'Profile',
            textStyle: const TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
        backgroundColor: AppColors.black,
        controller: controller,
        padding: const NavBarPadding.symmetric(horizontal: 5, vertical: 20),
        navBarStyle: NavBarStyle.style10,
        decoration: NavBarDecoration(borderRadius: BorderRadius.circular(22)),
        stateManagement: true,
      ),
    );
  }
}
