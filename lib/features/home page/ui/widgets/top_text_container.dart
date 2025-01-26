import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theming/text_style.dart';
import '../../../new%20entry%20page/logic/new_entry_cubit.dart';
import 'package:sizer/sizer.dart';

class TopTextContainer extends StatelessWidget {
  const TopTextContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var inject = context.read<NewEntryCubit>();

    return Column(
      children: [
        Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(bottom: 0.h),
            child: Text(
              "Worry less.\nLive healther",
              style: AppTextStyles.font24w800Textcolor,
            )),
        Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(bottom: 1.h),
            child: Text(
              "Welcome to Daily Dose",
              style: AppTextStyles.font16Textcolorpoppins,
            )),
        SizedBox(
          height: 2.h,
        ),
        Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 1.h),
            child: Text(
              inject.reminderList.length.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            )),
      ],
    );
  }
}