

import 'package:hive/hive.dart';

part 'medicine_type_model.g.dart';

@HiveType(typeId: 1)

enum MedicineTypeModel {
  @HiveField(0)

  pill,
  @HiveField(1)
  bottle,
  @HiveField(2)
  syringe,
  @HiveField(3)
  tablet,
  @HiveField(4)
  none,
}
