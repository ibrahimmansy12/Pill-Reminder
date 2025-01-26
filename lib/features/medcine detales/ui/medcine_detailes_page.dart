import 'package:flutter/material.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/widgets/custom_appbar.dart';
import '../../medcine%20detales/ui/widgets/delete_button.dart';
import '../../medcine%20detales/ui/widgets/extend_info_section.dart';
import '../../new%20entry%20page/data/add_reminder_model.dart';
import 'package:sizer/sizer.dart';

import 'widgets/main_section.dart';

class MedcineDetailesPage extends StatelessWidget {
  const MedcineDetailesPage({super.key, this.addReminderModel});
  final AddReminderModel? addReminderModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppbar(title: "Details"),
      body: Container(
        padding: EdgeInsets.all(2.h),
        width: double.infinity,
        child: Column(
          children: [
             MainSection(addReminderModel:addReminderModel ,),
            verticalSpace(3),
             ExtendInfoSection(addReminderModel: addReminderModel,),
            const Spacer(),
            DeleteButton(addReminderModel: addReminderModel,)
          ],
        ),
      ),
    ));
  }
}
