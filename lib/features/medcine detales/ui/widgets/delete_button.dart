import 'package:flutter/material.dart';
import 'package:pill2/core/helper/extention.dart';
import 'package:pill2/core/routing/routs.dart';
import 'package:pill2/core/theming/colors.dart';
import 'package:pill2/core/widgets/sapp_text_button.dart';
import 'package:pill2/features/new%20entry%20page/data/add_reminder_model.dart';
// ignore: depend_on_referenced_packages

import 'package:sizer/sizer.dart';

import '../../../../core/theming/text_style.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({
    super.key,
    this.addReminderModel,
  });
  final AddReminderModel? addReminderModel;
  @override
  Widget build(BuildContext context) {
    return SappTextButton(
      onpressed: () async {
        deleteAllert(context);
      },
      horezentalPading: 2,
      verticalPading: 1,
      buttonwidth: 50,
      borderRadius: 44.h,
      buttonhight: 7,
      backGroundColor: AppColors.kSecoundaryColor,
      buttonText: "Delete",
      textStyle: AppTextStyles.font18Textcolorpoppins
          .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
    );
  }

  deleteAllert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(20),
              // topEnd: Radius.circular(2),
              // bottomStart: Radius.circular(2),
              bottomEnd: Radius.circular(20),
            ),
          ),
          backgroundColor: Colors.white,
          title: Text(
            'Delete This Reminder?',
            style: AppTextStyles.font20TextcolormulishPoppins.copyWith(
                color: AppColors.kOtherColor, fontWeight: FontWeight.w400),
          ),
          // content: Text('Are you sure you want to delete this medicine?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('cancle'),
            ),
            TextButton(
              onPressed: () {
                addReminderModel!.delete();

                context.pushNamedAndRemoveUntil(ERouts.homeScreen,
                    predicate: (route) => false);
              },
              child: const Text(
                'ok',
                style: TextStyle(color: AppColors.kSecoundaryColor),
              ),
            ),
          ],
        );
      },
    );
  }
}
