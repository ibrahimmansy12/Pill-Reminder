import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pill2/core/theming/text_style.dart';
import 'package:pill2/core/widgets/sapp_text_button.dart';
import 'package:pill2/features/new%20entry%20page/data/add_reminder_model.dart';
import 'package:pill2/features/new%20entry%20page/logic/new_entry_cubit.dart';

import 'package:sizer/sizer.dart';
import 'package:uuid/uuid.dart';

class ConfirmMedcineButton extends StatefulWidget {
  const ConfirmMedcineButton({
    super.key,
  });

  @override
  State<ConfirmMedcineButton> createState() => _ConfirmMedcineButtonState();
}

class _ConfirmMedcineButtonState extends State<ConfirmMedcineButton> {
  //final TimeOfDay time = const TimeOfDay(hour: 0, minute: 00);
  final bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    var inject = context.read<NewEntryCubit>();
    return SizedBox(
      //alignment: Alignment.center,
      width: 50.w,
      child: SappTextButton(
        onpressed: ()  {
          if (inject.formKey.currentState!.validate()) {
            AddReminderModel addreminderModel = AddReminderModel(
              id:Random().nextInt(1000000),
              medcinename: inject.nameControler!.text,
              medcineDosge: inject.dosvageControler!.text,
              time: inject.newEntryModel.time,
              medicineTypeModel: inject.newEntryModel.medicineTypeModel,
              interval: inject.newEntryModel.interval,
            );

            inject.formKey.currentState!.save();
             inject.addReminder(addreminderModel,context);
            
          } else {
            setState(() {
            inject.autovalidateMode = AutovalidateMode.always;
              
            });
          }
          // TODO do it as a founction on cubit
        },
        horezentalPading: 2,
        verticalPading: 2,
        buttonwidth: 50,
        borderRadius: 44.h,
        buttonhight: 9,
        buttonText: "Confirm",
        textStyle:
            AppTextStyles.font16Textcolorpoppins.copyWith(color: Colors.white),
      ),
    );
  }
}
