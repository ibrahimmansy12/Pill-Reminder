import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter/material.dart';
import 'package:pill2/core/constans/theming/colors_manager.dart';
import 'package:pill2/core/helper/bloc_observer.dart';
import 'package:pill2/core/routing/app_router.dart';
import 'package:pill2/core/service/local_notification_service.dart';
import 'package:pill2/features/new%20entry%20page/data/add_reminder_model.dart';
import 'package:pill2/features/new%20entry%20page/data/medicine_type_model.dart';
import 'package:pill2/pill_app.dart';

import 'core/service/work_manager_service.dart';



void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await ScreenUtil.ensureScreenSize();
  await Hive.initFlutter();
  Bloc.observer = AddReminderBlocObserver();
 await Future.wait([
    LocalNotificationService.init(),
   // WorkManagerService().init(),
  ]);
  Hive.registerAdapter(AddReminderModelAdapter());
  Hive.registerAdapter(MedicineTypeModelAdapter());
  Hive.registerAdapter(TimeOfDayAdapter());
  await Hive.openBox<AddReminderModel>(medcineBox);
await Future.wait([
    LocalNotificationService.init(),
    //WorkManagerService().init(),
  ]);
  runApp(PillReminder(
    approuting: EAppRouter(),
  ));
}
