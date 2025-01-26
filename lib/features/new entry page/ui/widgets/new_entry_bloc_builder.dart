import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pill2/features/new%20entry%20page/logic/new_entry_cubit.dart';
import 'package:pill2/features/new%20entry%20page/ui/widgets/check_entry_changes.dart';
import 'package:pill2/features/new%20entry%20page/ui/widgets/sellect_medicine_type.dart';


class NewEntryBlocBuilder extends StatelessWidget {
  const NewEntryBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewEntryCubit, NewEntryState>(
        buildWhen: (previous, current) =>
            current is SellectIntervals ||
            current is SellectTime ||
            current is SellectMedecinType,
        builder: (context, state) {
          
          if (state is SellectMedecinType) {
            return CheckEntryChanges(
              state: state,
              newEntryModel:
                  context.read<NewEntryCubit>().newEntryModel,
            );
          } else if (state is Initial) {
            return CheckEntryChanges(
              state: state,
              newEntryModel:
                  context.read<NewEntryCubit>().newEntryModel,
            );
          } else if (state is SellectIntervals) {
            return CheckEntryChanges(
              state: state,
              newEntryModel:
                  context.read<NewEntryCubit>().newEntryModel,
            );
          }
          if (state is SellectTime) {
          return CheckEntryChanges(
              state: state,
              newEntryModel:
                  context.read<NewEntryCubit>().newEntryModel,
            );
          }
          return const SizedBox.shrink();
        });
  }
}