

import 'package:flutter/material.dart';
import '../theming/colors.dart';
import 'package:sizer/sizer.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton(
      {super.key,
      this.buttonhight,
      this.buttonwidth,
      required this.buttonText,
      this.textStyle,
      this.onpressed,
      this.borderRadius,
      this.backGroundColor,
      this.horezentalPading,
      this.verticalPading});
  final double? buttonhight;
  final double? borderRadius;
  final double? buttonwidth;
  final double? horezentalPading;
  final double? verticalPading;
  final String buttonText;
  final TextStyle? textStyle;
  final VoidCallback? onpressed;
  final Color? backGroundColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onpressed,
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
                backGroundColor ?? AppColors.kOtherColor),
            padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(
                horizontal: horezentalPading?.w ?? 42.w,
                vertical: verticalPading?.h ?? 42.h)),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize:
                WidgetStateProperty.all(const Size(double.infinity, 52)),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius ?? 16.h))),
            fixedSize: WidgetStateProperty.all(Size(
                buttonwidth?.w ?? double.maxFinite, buttonhight?.h ?? 50.h))),
        child: Text(
          buttonText,
          style: textStyle,
        ));
  }
}
