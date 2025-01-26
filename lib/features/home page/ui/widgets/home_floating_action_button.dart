import 'package:flutter/material.dart';
import '../../../../core/helper/extention.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/routing/routs.dart';
import '../../../../core/theming/colors.dart';

class HomeFloatingActionButton extends StatelessWidget {
  const HomeFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(ERouts.newEntry); //pushNamed(ERouts.newEntry);
       // Navigator.of(context).pushNamed(ERouts.newEntry);
      },
      child: SizedBox(
        height: 9.h,
        width: 18.w,
        child: Card(
          color: AppColors.kPrimaryColor,
          shape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(3.h)),
          child: Icon(
            Icons.add_outlined,
            size: 33.sp,
            color: AppColors.kScaffouldColor,
          ),
        ),
      ),
    );
  }
}
