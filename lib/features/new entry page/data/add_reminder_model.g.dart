// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_reminder_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AddReminderModelAdapter extends TypeAdapter<AddReminderModel> {
  @override
  final int typeId = 0;

  @override
  AddReminderModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AddReminderModel(
      time: fields[4] as TimeOfDay?,
      medcinename: fields[0] as String?,
      medcineDosge: fields[1] as String?,
      medicineTypeModel: fields[2] as MedicineTypeModel?,
      interval: fields[3] as int?,
      id: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, AddReminderModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.medcinename)
      ..writeByte(1)
      ..write(obj.medcineDosge)
      ..writeByte(2)
      ..write(obj.medicineTypeModel)
      ..writeByte(3)
      ..write(obj.interval)
      ..writeByte(4)
      ..write(obj.time)
      ..writeByte(5)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddReminderModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
