import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:pill2/core/service/local_notification_service.dart';
import 'package:workmanager/workmanager.dart';

import '../../features/new entry page/data/add_reminder_model.dart';
// steps
//1.init work manager
//2.excute our task.
//3.register our task in work manager

class WorkManagerService {
  void registerMyTask() async {
    print("==================> work manager registered");   

    //register my task
    await Workmanager().registerPeriodicTask(
      'id1',
      'show simple notification',
      frequency: const Duration(hours: 5),
    );
  }

  //init work manager service
  Future<void> init() async {
    await Workmanager().initialize(actionTask, isInDebugMode: true);
    print("==================> work manager initialized");  
    registerMyTask();
  }

  void cancelTask(String id) {
    Workmanager().cancelAll();
  }
}

@pragma('vm-entry-point')
void actionTask() {
    print("==============> work manager actoin task");    

  //show notification
  Workmanager().executeTask((taskName, inputData) {
    //TODO add androidScheduleMode
LocalNotificationService().scedualedNotification();
    
    return Future.value(true);
  });
}

//1.schedule notification at 9 pm.
//2.execute for this notification.
