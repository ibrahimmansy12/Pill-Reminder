import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pill2/core/theming/text_style.dart';
import 'package:pill2/core/widgets/sapp_text_button.dart';
import 'package:pill2/features/new%20entry%20page/data/add_reminder_model.dart';
import 'package:pill2/features/new%20entry%20page/logic/new_entry_cubit.dart';

import 'package:sizer/sizer.dart';

class SellectTimeButton extends StatefulWidget {
  const SellectTimeButton({
    super.key,
    required this.newEntryModel,
  });
  final AddReminderModel newEntryModel;

  @override
  State<SellectTimeButton> createState() => _SellectTimeButtonState();
}

class _SellectTimeButtonState extends State<SellectTimeButton> {
  @override
  Widget build(BuildContext context) {
    var inject = context.read<NewEntryCubit>();
    return SappTextButton(
      onpressed: () async {
        await inject.selectTime(context, widget.newEntryModel);
        setState(() {});
      },
      horezentalPading: 2,
      verticalPading: 2,
      buttonwidth: 50,
      borderRadius: 44.h,
      buttonhight: 7,
      buttonText: inject.isCheck == false
          ? "Sellect Time"
          : widget.newEntryModel.time!.format(context),
      textStyle:
          AppTextStyles.font16Textcolorpoppins.copyWith(color: Colors.white),
    );
  }
}
