import 'package:flutter/material.dart';
import 'package:pill2/core/helper/spacing.dart';
import 'package:pill2/core/theming/colors.dart';
import 'package:pill2/core/theming/text_style.dart';

import 'package:sizer/sizer.dart';

class ExtendInfoTap extends StatelessWidget {
  const ExtendInfoTap({
    super.key,
    required this.extendTitle,
    required this.extendInfo,
  });
  final String extendTitle;
  final String extendInfo;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.h),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            extendTitle,
            style: AppTextStyles.font17Textcolorpoppins
                .copyWith(fontWeight: FontWeight.w600),
          ),
          verticalSpace(0.8),
          Text(extendInfo,
              style: AppTextStyles.font15Textcolorpoppins
                  .copyWith(color: AppColors.kSecoundaryColor)),
        ],
      ),
    );
  }
}
