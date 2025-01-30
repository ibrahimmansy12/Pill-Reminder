import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pill2/features/new%20entry%20page/data/medicine_type_model.dart';

part 'add_reminder_model.g.dart';

@HiveType(typeId: 0)
class AddReminderModel extends HiveObject {
  AddReminderModel(
      {this.time,
      this.medcinename,
      this.medcineDosge,
      this.medicineTypeModel,
      this.interval,
      this.id});
  @HiveField(0)
  final String? medcinename;
  @HiveField(1)
  final String? medcineDosge;
  @HiveField(2)
  MedicineTypeModel? medicineTypeModel;
  @HiveField(3)
  int? interval;
  @HiveField(4)
  TimeOfDay? time;
  @HiveField(5)
  int? id;
  //= const TimeOfDay(hour: 0, minute: 00);
  // Map<String, dynamic> toJson() => _$AddReminderModelToJson(this);
}
