import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../home%20page/ui/widgets/medcine_card.dart';
import '../../../new%20entry%20page/logic/new_entry_cubit.dart';
class BottomTextContaner extends StatelessWidget {
  const BottomTextContaner({super.key});

  @override
  Widget build(BuildContext context) {
    var inject = context.read<NewEntryCubit>();
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: inject.reminderList.length,
        itemBuilder: (context, index) {
          return  MedcineCard(addReminderModel: inject.reminderList[index],);
        });
  }
}
