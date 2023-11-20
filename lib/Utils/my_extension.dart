import 'package:flutter/material.dart';


///Center Extension
extension CenterWidget on Widget {
  Center toCenter() {
    return Center(
      child: this,
    );
  }
}


///GestureDetector Extension
extension GestureDetectorExtension on Widget {
  GestureDetector toGesture(Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: this,
    );
  }
}


///Align Extension
extension AlignWidget on Widget {
  Align toAlignLeft({double? widthFactor, double? heightFactor}) {
    return Align(
      alignment: Alignment.centerLeft,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }

  Align toAlignRight({double? widthFactor, double? heightFactor}) {
    return Align(
      alignment: Alignment.centerRight,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }

  Align toAlignTop({double? widthFactor, double? heightFactor}) {
    return Align(
      alignment: Alignment.topCenter,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }

  Align toAlignBottom({double? widthFactor, double? heightFactor}) {
    return Align(
      alignment: Alignment.bottomCenter,
      widthFactor: widthFactor,
      heightFactor: heightFactor,
      child: this,
    );
  }
}


///Padding Extension
extension PaddingExtension on Widget {
  Widget toPaddingLeft(double left) {
    return Padding(
      padding: EdgeInsets.only(left: left),
      child: this,
    );
  }
  Widget toAllPadding(double all) {
    return Padding(
      padding: EdgeInsets.all(all),
      child: this,
    );
  }

  Widget toHorizontalPadding(double horizontal) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal),
      child: this,
    );
  }

  Widget toVerticalPadding(double vertical) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical),
      child: this,
    );
  }

  Widget toPaddingTop(double top) {
    return Padding(
      padding: EdgeInsets.only(top: top),
      child: this,
    );
  }

  Widget toPaddingRight(double right) {
    return Padding(
      padding: EdgeInsets.only(right: right),
      child: this,
    );
  }

  Widget toPaddingBottom(double bottom) {
    return Padding(
      padding: EdgeInsets.only(bottom: bottom),
      child: this,
    );
  }

}


///SizedBox Height and Width
class CustomSizedBoxHeight extends StatelessWidget {
  final double? height;

  CustomSizedBoxHeight({this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}

CustomSizedBoxHeight createCustomSizedBoxHeight(double height) {
  // Ensure that the height is toin the range [5, 100]
  final clampedHeight = height.clamp(5.0, 100.0);

  return CustomSizedBoxHeight(height: clampedHeight);
}

class CustomSizedBoxWidth extends StatelessWidget {
  final double? width;

  CustomSizedBoxWidth({this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width);
  }
}

CustomSizedBoxWidth customSizedBoxWidth(double width) {
  // Ensure that the height is toin the range [5, 100]
  final clampedWidth = width.clamp(5.0, 100.0);

  return CustomSizedBoxWidth(width: clampedWidth);
}