// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine_type_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MedicineTypeModelAdapter extends TypeAdapter<MedicineTypeModel> {
  @override
  final int typeId = 1;

  @override
  MedicineTypeModel read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return MedicineTypeModel.pill;
      case 1:
        return MedicineTypeModel.bottle;
      case 2:
        return MedicineTypeModel.syringe;
      case 3:
        return MedicineTypeModel.tablet;
      case 4:
        return MedicineTypeModel.none;
      default:
        return MedicineTypeModel.pill;
    }
  }

  @override
  void write(BinaryWriter writer, MedicineTypeModel obj) {
    switch (obj) {
      case MedicineTypeModel.pill:
        writer.writeByte(0);
        break;
      case MedicineTypeModel.bottle:
        writer.writeByte(1);
        break;
      case MedicineTypeModel.syringe:
        writer.writeByte(2);
        break;
      case MedicineTypeModel.tablet:
        writer.writeByte(3);
        break;
      case MedicineTypeModel.none:
        writer.writeByte(4);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MedicineTypeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
