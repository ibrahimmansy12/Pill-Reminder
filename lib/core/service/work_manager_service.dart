import 'package:pill2/core/service/local_notification_service.dart';
import 'package:pill2/features/new%20entry%20page/data/add_reminder_model.dart';
import 'package:workmanager/workmanager.dart';

// steps
//1.init work manager
//2.excute our task.
//3.register our task in work manager

class WorkManagerService {
   registerMyTask(AddReminderModel? addReminderModel)  {
    print("==================> work manager start register");
    
   
   
    print("==================> work manager registered");
    //register my task
     Workmanager().registerPeriodicTask(
      'id1',
      'show simple notification',
      
      frequency: Duration(hours: addReminderModel?.interval ?? 6),
    tag: addReminderModel?.id.toString(),
    );
  }

  //init work manager service
  Future<void> init(AddReminderModel? addReminderModel) async {
    await Workmanager()
        .initialize(actionTask(addReminderModel), isInDebugMode: true);
    print("==================> work manager initialized");
    registerMyTask(addReminderModel);
    print("==================> work manager finished");

  }

  void cancelTask(String id) {
    Workmanager().cancelAll();
  }

  void cancelTaskwithId(String id) {
    Workmanager().cancelByTag(id);
  }
}

@pragma('vm-entry-point')
   actionTask(AddReminderModel? addReminderModel) {
  print("==============> work manager actoin task");

  //show notification
  Workmanager().executeTask((taskName, inputData)  {
    LocalNotificationService()
        .showDailySchduledNotification(addreminderModel: addReminderModel);
  print("==============> work manager actoin task222222");

    return Future.value(true);
  });

}

//1.schedule notification at 9 pm.
//2.execute for this notification.
