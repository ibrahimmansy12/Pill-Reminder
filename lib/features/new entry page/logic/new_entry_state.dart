part of 'new_entry_cubit.dart';

@freezed
class NewEntryState with _$NewEntryState {
  const factory NewEntryState.initial() = Initial;
  const factory NewEntryState.sellectIntervals(
      AddReminderModel? newEntryModel) = SellectIntervals;
  const factory NewEntryState.sellectMedcineType(
      AddReminderModel? newEntryModel) = SellectMedcineType;
  const factory NewEntryState.sellectTime(AddReminderModel? newEntryModel) =
      SellectTime;
  const factory NewEntryState.addReminderLoading() = AddReminderLoading;
  const factory NewEntryState.addReminderSucess() = AddReminderSucess;
  const factory NewEntryState.addReminderFaliure(String error) = AddReminderFaliure;
}
