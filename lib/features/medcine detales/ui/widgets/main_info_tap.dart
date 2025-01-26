import 'package:flutter/material.dart';

import 'package:pill2/core/theming/text_style.dart';

import 'package:sizer/sizer.dart';


class MainInfoTap extends StatelessWidget {
  const MainInfoTap({super.key, required this.title, required this.info});
  final String title;
  final String info;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.font16Textcolorpoppins,
          ),
          Text(
            info,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyles.font21w800Textcolor,
          ),
        ],
      ),
    );
  }
}
