import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../core.dart';

class NotificationsView extends GetView<NotificationsController> {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const AppBarWidget(
            isBackButton: false,
            title: 'Notifications',
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      'New',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey[200],
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => NotificationWidget(
                        notification: controller.notifications[index],
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 8),
                      itemCount: controller.notifications.length - 2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      DateFormat('EEEE, dd MMMM yyyy').format(DateTime.now()),
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey[200],
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) => NotificationWidget(
                        notification: controller.readNotifications[index],
                        isRead: true,
                      ),
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 8),
                      itemCount: controller.readNotifications.length,
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
