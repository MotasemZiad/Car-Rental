import 'package:get/get.dart';

import '../../core.dart';

class NotificationsController extends GetxController {
  List<Notification> notifications = [];
  List<Notification> readNotifications = [];

  @override
  void onInit() {
    super.onInit();
    notifications = NotificationService().getNotificationsList();
    readNotifications = notifications.sublist(3);
  }
}
