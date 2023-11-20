import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

import '../Utils/color_constant.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged, required this.onToggle});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;
  void Function(bool) onToggle;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: _buildSwitchWidget(),
    )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        padding: 2,
        value: value ?? false,
        height: 25,
        width: 44,
        toggleSize: 24,
        borderRadius: 16,
        activeColor: AppColors.brown,
        activeToggleColor: Colors.white,
        inactiveColor: Color(0xffA6A6A6),
        inactiveToggleColor: Colors.white,
        onToggle: onToggle,
      ),
    );
  }
}
