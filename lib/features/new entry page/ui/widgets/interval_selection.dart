import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pill2/core/theming/colors.dart';
import 'package:pill2/core/theming/text_style.dart';
import 'package:pill2/features/new%20entry%20page/logic/new_entry_cubit.dart';

import 'package:sizer/sizer.dart';

class IntervalSelection extends StatefulWidget {
  const IntervalSelection({super.key});

  @override
  State<IntervalSelection> createState() => _IntervalSelectionState();
}

class _IntervalSelectionState extends State<IntervalSelection> {
  @override
  Widget build(BuildContext context) {
    var inject = context.read<NewEntryCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Remind me every",
          style: AppTextStyles.font16Textcolorpoppins,
        ),
        DropdownButton(
          itemHeight: 8.h,
          iconEnabledColor: AppColors.kOtherColor,
          dropdownColor: AppColors.kScaffouldColor,
          hint: inject.sellected == 0
              ? Text(
                  "Sellect an intervals",
                  style: AppTextStyles.font15Textcolorpoppins
                      .copyWith(color: AppColors.kOtherColor),
                )
              : Text(
                  inject.sellected.toString(),
                  style: AppTextStyles.font16Textcolorpoppins,
                ),
          items: inject.intervals.map((int value) {
            return DropdownMenuItem<int>(
              value: value,
              child: Text(
                value.toString(),
                style: AppTextStyles.font15Textcolorpoppins
                    .copyWith(color: AppColors.kSecoundaryColor),
              ),
            );
          }).toList(),
          onChanged: (newValue) {
            inject .sellectIntervals(newValue!);
            setState(() {
              inject.sellected = newValue;
            });
          },
        ),
        Text(
          inject.sellected == 1 ? " hour" : " hours",
          style: AppTextStyles.font16Textcolorpoppins,
        )
      ],
    );
  }
}
