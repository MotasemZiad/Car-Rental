import 'package:car_rental/core.dart';

class NotificationService {
  List<Notification> getNotificationsList() {
    return [
      Notification(
        title: 'Progress',
        content: 'Please finish tour guide, how to book a car!',
        image: 'assets/images/notifications/progress.png',
      ),
      Notification(
        title: 'Updates',
        content: 'We have some of the newest features in this version.',
        image: 'assets/images/notifications/updates.png',
      ),
      Notification(
        title: 'Analytics',
        content: 'Analysis your all transaction daily, monthly, or annual.',
        image: 'assets/images/notifications/analytics.png',
      ),
      Notification(
        title: 'Share',
        content: 'You can share any information to your friends.',
        image: 'assets/images/notifications/share.png',
      ),
      Notification(
        title: 'Verification',
        content: 'Your personal data was already verified.',
        image: 'assets/images/notifications/verification.png',
      ),
    ];
  }
}
