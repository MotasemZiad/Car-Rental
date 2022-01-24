import 'package:get/get.dart';

import '../../core.dart';
import 'package:flutter/material.dart' hide Notification;

class NotificationWidget extends GetView<NotificationsController> {
  const NotificationWidget(
      {Key? key, required this.notification, this.isRead = false})
      : super(key: key);
  final Notification notification;
  final bool isRead;
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(notification.image),
      direction: DismissDirection.horizontal,
      background: Container(
        color: Theme.of(context).errorColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildDeleteRaw(),
            _buildDeleteRaw(),
          ],
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: isRead ? Colors.white : kPrimaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 12),
        child: ListTile(
          contentPadding: const EdgeInsets.all(15),
          leading: Image.asset(
            notification.image!,
            fit: BoxFit.cover,
            width: 85,
            height: 85,
          ),
          title: Text(
            notification.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: isRead ? Colors.black : Colors.white,
            ),
          ),
          subtitle: Text(
            notification.content,
            style: TextStyle(
              color: isRead ? Colors.black : Colors.white,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: isRead ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }

  Row _buildDeleteRaw() {
    return Row(
      children: const [
        Icon(
          Icons.delete,
          color: Colors.white,
          size: 22.0,
        ),
        SizedBox(width: 4.0),
        Text(
          'Delete',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 8.0),
      ],
    );
  }
}
