import 'package:flutter/material.dart';
import 'package:pill2/features/new%20entry%20page/data/add_reminder_model.dart';
import 'package:pill2/features/new%20entry%20page/logic/new_entry_cubit.dart';
import 'package:pill2/features/new%20entry%20page/ui/widgets/confirm_medcine_button.dart';
import 'package:pill2/features/new%20entry%20page/ui/widgets/interval_selection.dart';
import 'package:pill2/features/new%20entry%20page/ui/widgets/panel_title.dart';
import 'package:pill2/features/new%20entry%20page/ui/widgets/sellect_medicine_type.dart';
import 'package:pill2/features/new%20entry%20page/ui/widgets/sellect_time_button.dart';

import 'package:sizer/sizer.dart';

class CheckEntryChanges extends StatefulWidget {
  const CheckEntryChanges({
    super.key,
    required this.newEntryModel,
    this.state,
  });
  final AddReminderModel newEntryModel;
  final NewEntryState? state;

  @override
  State<CheckEntryChanges> createState() => _CheckEntryChangesState();
}

class _CheckEntryChangesState extends State<CheckEntryChanges> {
  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: widget. state is AddReminderLoading ?true:false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SellectMedecinType(
            newEntryModel: widget.newEntryModel,
          ),
          const PanelTitle(
            title: "Interval Selection",
            isRequired: true,
          ),
          const IntervalSelection(),
      
          ////////////////////////////////////////////
          SellectTimeButton(
            newEntryModel: widget.newEntryModel,
          ),
      
          SizedBox(
            height: 2.h,
          ),
          const Align(alignment: Alignment.center, child: ConfirmMedcineButton()),
        ],
      ),
    );
  }
}
