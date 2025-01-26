import 'package:flutter/material.dart';
import 'package:pill2/core/theming/colors.dart';
import 'package:pill2/core/theming/text_style.dart';

import 'package:sizer/sizer.dart';

class PanelTitle extends StatelessWidget {
  const PanelTitle({
    super.key,
    this.title,
    this.isRequired,
  });
  final String? title;
  final bool? isRequired;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.h),
      child: Text.rich(TextSpan(children: <TextSpan>[
        TextSpan(
          text: title,
          style: AppTextStyles.font16w500Textcolor,
        ),
        TextSpan(
          text: isRequired! ? " *" : "",
          style: AppTextStyles.font16w500Textcolor.copyWith(
            color: AppColors.kPrimaryColor,
          ),
        )
      ])),
    );
  }
}
