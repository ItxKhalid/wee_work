import 'package:flutter/material.dart';
import 'package:weework/Utils/image_constant.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: CircleAvatar(maxRadius: 100, backgroundImage: AssetImage(AppImages.NameLogo),)),
    );
  }
}
