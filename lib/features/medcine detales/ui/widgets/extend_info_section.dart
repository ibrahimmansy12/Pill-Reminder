import 'package:flutter/material.dart';
import 'package:pill2/features/medcine%20detales/ui/widgets/extend_info_tap.dart';
import 'package:pill2/features/new%20entry%20page/data/add_reminder_model.dart';
import 'package:pill2/features/new%20entry%20page/data/medicine_type_model.dart';

class ExtendInfoSection extends StatelessWidget {
  const ExtendInfoSection({super.key, this.addReminderModel});
  final AddReminderModel? addReminderModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExtendInfoTap(
            extendTitle: "Medcine Type",
            extendInfo: (addReminderModel?.medicineTypeModel ==
                    MedicineTypeModel.bottle)
                ? "Bottle"
                : (addReminderModel?.medicineTypeModel ==
                        MedicineTypeModel.pill)
                    ? "Pill"
                    : (addReminderModel?.medicineTypeModel ==
                            MedicineTypeModel.syringe)
                        ? "Syringe"
                        : "Tablet",
          ),
          ExtendInfoTap(
            extendTitle: "Dose Interval",
            extendInfo: (addReminderModel?.interval ==
                    6)
                ? "Every 6 hours | 4 times a day"
                : (addReminderModel?.interval ==
                        8)
                    ? "Every 8 hours | 3 times a day"
                    : (addReminderModel?.interval ==
                           12)
                        ? "Every 12 hours | 2 times a day"
                        : "Every day 1 time", 
          ),
          ExtendInfoTap(
            extendTitle: "Start Time",
            extendInfo: addReminderModel?.time?.format(context) ?? "00:00",
          ),
        ],
      ),
    );
  }
}

