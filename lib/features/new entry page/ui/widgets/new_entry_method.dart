import 'package:flutter/material.dart';
import 'package:pill2/core/theming/colors.dart';

UnderlineInputBorder focusedBorderTheme() {
  return const UnderlineInputBorder(
      borderSide: BorderSide(
    color: AppColors.kPrimaryColor,
    width: 1.5,
  ));
}

UnderlineInputBorder enableBorderTheme() {
  return const UnderlineInputBorder(
      borderSide: BorderSide(
    color: AppColors.kTextLightColor,
    width: 0.7,
  ));
}

UnderlineInputBorder borderTheme() {
  return const UnderlineInputBorder(
      borderSide: BorderSide(
    color: AppColors.kTextLightColor,
  ));
}
InputDecoration textformDecoration() {
  return InputDecoration(
      enabledBorder: enableBorderTheme(),
      border: borderTheme(),
      focusedBorder: focusedBorderTheme());
}