import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pill2/core/constans/theming/colors_manager.dart';
import 'package:pill2/core/helper/extention.dart';
import 'package:pill2/core/routing/routs.dart';
import 'package:pill2/features/new%20entry%20page/data/add_reminder_model.dart';


part 'new_entry_cubit.freezed.dart';
part 'new_entry_state.dart';

class NewEntryCubit extends Cubit<NewEntryState> {
  NewEntryCubit() : super(const NewEntryState.initial());
  AddReminderModel newEntryModel = AddReminderModel();
  // MedicineTypeModel? medicineTypeModel;
  TextEditingController? nameControler = TextEditingController();
  late GlobalKey<ScaffoldState> scafoldKey = GlobalKey<ScaffoldState>();
  TextEditingController? dosvageControler = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final intervals = [
    6,
    8,
    12,
    24,
  ];
  var sellected = 0; //TimeOfDay time = const TimeOfDay(hour: 0, minute: 00);
  List<AddReminderModel> reminderList = [];
  bool isCheck = false;
  String? medcineNameValidate;
 Future deleteReminder(BuildContext context, AddReminderModel addreminderModel)async {
   // var reminderBox = Hive.box<AddReminderModel>(medcineBox);
  await  addreminderModel.delete();
  debugPrint("++++++++++++++++++++++++delete");
      // if (context.mounted) {
      //   context.pushNamedAndRemoveUntil(ERouts.homeScreen,
      //       predicate: (route) => false);
      // }
  }
  Future addReminder(
      AddReminderModel addreminderModel, BuildContext context) async {
    emit(const NewEntryState.addReminderLoading());
    try {
      var reminderBox = Hive.box<AddReminderModel>(medcineBox);
      await reminderBox.add(addreminderModel);
      emit(const NewEntryState.addReminderSucess());
      if (context.mounted) {
        context.pushNamedAndRemoveUntil(ERouts.homeScreen,
            predicate: (route) => false);
      }
    } catch (e) {
      debugPrint("====================$e");
    }
  }

  getReminders() {
    var reminderBox = Hive.box<AddReminderModel>(medcineBox);
    reminderList = reminderBox.values.toList();
  }

  Future<TimeOfDay> selectTime(
      BuildContext context, AddReminderModel newEntryModel) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: newEntryModel.time ?? const TimeOfDay(hour: 0, minute: 0),
    );
    if (picked != null && picked != newEntryModel.time) {
      newEntryModel.time = picked;
      isCheck = true;
      emit(NewEntryState.sellectTime(newEntryModel));
    }
    return picked!;
  }

  void sellectMedcineType(medicineModel) {
    newEntryModel.medicineTypeModel = medicineModel;
    emit(NewEntryState.sellectMedcineType(newEntryModel));
  }

  void sellectIntervals(int interval) {
    newEntryModel.interval = interval;
    emit(NewEntryState.sellectIntervals(newEntryModel));
  }
}
