import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pill2/features/new%20entry%20page/data/add_reminder_model.dart';
import 'package:pill2/features/new%20entry%20page/data/medicine_type_model.dart';
import 'package:pill2/features/new%20entry%20page/logic/new_entry_cubit.dart';
import 'package:pill2/features/new%20entry%20page/ui/widgets/medicine_type_column.dart';


class SellectMedecinType extends StatefulWidget {
  const SellectMedecinType({
    super.key,
    this.newEntryModel,
  });
  final AddReminderModel? newEntryModel;

  @override
  State<SellectMedecinType> createState() => _SellectMedecinTypeState();
}

class _SellectMedecinTypeState extends State<SellectMedecinType> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MedicineTypeColumn(
          onTap: () {
            context
                .read<NewEntryCubit>()
                .sellectMedcineType(MedicineTypeModel.pill);
            setState(() {});
          },
         // newEntryModel: widget.newEntryModel,
          medicineModel: MedicineTypeModel.pill,
          name: "Pill",
          iconValue: "assets/icons/pill.svg",
          isSelected:
              widget.newEntryModel?.medicineTypeModel == MedicineTypeModel.pill
                  ? true
                  : false,
        ),
        MedicineTypeColumn(
            onTap: () {
              context
                  .read<NewEntryCubit>()
                  .sellectMedcineType(MedicineTypeModel.bottle);
              setState(() {});
            },
           // newEntryModel: widget.newEntryModel,
            medicineModel: MedicineTypeModel.bottle,
            name: "Bottel",
            iconValue: "assets/icons/bottle.svg",
            isSelected: widget.newEntryModel?.medicineTypeModel ==
                    MedicineTypeModel.bottle
                ? true
                : false),
        MedicineTypeColumn(
            onTap: () {
              context
                  .read<NewEntryCubit>()
                  .sellectMedcineType(MedicineTypeModel.syringe);
              setState(() {});
            },
          //  newEntryModel: widget.newEntryModel,
            medicineModel: MedicineTypeModel.syringe,
            name: "Syringe",
            iconValue: "assets/icons/syringe.svg",
            isSelected: widget.newEntryModel?.medicineTypeModel ==
                    MedicineTypeModel.syringe
                ? true
                : false),
        MedicineTypeColumn(
            onTap: () {
              context
                  .read<NewEntryCubit>()
                  .sellectMedcineType(MedicineTypeModel.tablet);
              setState(() {});
            },
           // newEntryModel: widget.newEntryModel,
            medicineModel: MedicineTypeModel.tablet,
            name: "Tablet",
            iconValue: "assets/icons/tablet.svg",
            isSelected: widget.newEntryModel?.medicineTypeModel ==
                    MedicineTypeModel.tablet
                ? true
                : false),
      ],
    );
  }
}
