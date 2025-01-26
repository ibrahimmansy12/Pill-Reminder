import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pill2/core/theming/colors.dart';
import 'package:pill2/core/theming/text_style.dart';
import 'package:pill2/features/new%20entry%20page/data/medicine_type_model.dart';

import 'package:sizer/sizer.dart';

class MedicineTypeColumn extends StatelessWidget {
  const MedicineTypeColumn({
    super.key,
    required this.medicineModel,
    required this.name,
    required this.iconValue,
    required this.isSelected,
    this.onTap,
   // required this.newEntryModel,
  });
  final void Function()? onTap;
  final MedicineTypeModel medicineModel;
  final String name;
  final String iconValue;
  final bool isSelected;
  //final AddReminderModel? newEntryModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(top: 1.h),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
              width: 20.w,
              height: 10.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.h),
                color: isSelected ? AppColors.kOtherColor : Colors.white,
              ),
              child: SvgPicture.asset(
                iconValue,
                height: 9.h,
                //  color: !isSelected ? AppColors.kOtherColor : Colors.white,
                colorFilter: ColorFilter.mode(
                  !isSelected ? AppColors.kOtherColor : Colors.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 1.h),
              // padding: EdgeInsets.all( 1.h),
              width: 20.w,
              height: 4.h,
              decoration: BoxDecoration(
                  color: isSelected ? AppColors.kOtherColor : Colors.white,
                  borderRadius: BorderRadius.circular(20.h)),
              child: Center(
                child: Text(
                  name,
                  style: AppTextStyles.font16Textcolorpoppins.copyWith(
                    color: !isSelected ? AppColors.kTextColor : Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
