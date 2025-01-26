import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/text_style.dart';
import '../../../medcine%20detales/ui/medcine_detailes_page.dart';
import '../../../new%20entry%20page/data/add_reminder_model.dart';
import '../../../new%20entry%20page/data/medicine_type_model.dart';
import 'package:sizer/sizer.dart';

class MedcineCard extends StatelessWidget {
  const MedcineCard({
    super.key,
    this.addReminderModel,
  });
  final AddReminderModel? addReminderModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.white,
      splashColor: Colors.grey,
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MedcineDetailesPage(
                addReminderModel: addReminderModel,
              ),
            ));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.1.h),
        margin: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(2.w),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(2),
            SvgPicture.asset(
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
              colorFilter: const ColorFilter.mode(
                  AppColors.kOtherColor, BlendMode.srcIn),
            ),
            const Spacer(),
            Text(
              addReminderModel?.medcinename ?? "calpol",
              style: AppTextStyles.font21w800Textcolor,
               maxLines: 1,
            overflow: TextOverflow.ellipsis,
            ),
            verticalSpace(0.3),
            Text(
              addReminderModel?.interval == null
                  ? "For one time"
                  : "Every ${addReminderModel?.interval} hours",
              style: AppTextStyles.font15Textcolorpoppins,
             maxLines: 1,
            overflow: TextOverflow.ellipsis,
            ),
            verticalSpace(1.5)
          ],
        ),
      ),
    );
  }
}
