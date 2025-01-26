import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pill2/core/helper/spacing.dart';
import 'package:pill2/core/theming/colors.dart';
import 'package:pill2/features/medcine%20detales/ui/widgets/main_info_tap.dart';
import 'package:pill2/features/new%20entry%20page/data/add_reminder_model.dart';
import 'package:pill2/features/new%20entry%20page/data/medicine_type_model.dart';

import 'package:sizer/sizer.dart';

class MainSection extends StatelessWidget {
  const MainSection({
    super.key,
    this.addReminderModel,
  });
  final AddReminderModel? addReminderModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 10.h,
          width: 40.w,
          child: SvgPicture.asset(
            (addReminderModel?.medicineTypeModel == MedicineTypeModel.bottle)
                ? "assets/icons/bottle.svg"
                : (addReminderModel?.medicineTypeModel ==
                        MedicineTypeModel.pill)
                    ? "assets/icons/pill.svg"
                    : (addReminderModel?.medicineTypeModel ==
                            MedicineTypeModel.syringe)
                        ? "assets/icons/syringe.svg"
                        : "assets/icons/tablet.svg",
            height: 8.h,
            colorFilter:
                const ColorFilter.mode(AppColors.kOtherColor, BlendMode.srcIn),
            //  color: AppColors.kOtherColor,
          ),
        ),
        horezontalSpace(8),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MainInfoTap(
                title: "Medcine Name",
                info: addReminderModel?.medcinename ?? "Catapol",
              ),
              verticalSpace(2),
              MainInfoTap(
                title: "Dosage",
                info: addReminderModel?.medcineDosge ?? "00 mg",
              )
            ],
          ),
        )
      ],
    );
  }
}
