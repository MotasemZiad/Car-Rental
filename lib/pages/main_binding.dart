import 'package:get/get.dart';
import '../core.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MainController>(MainController());
    Get.put<HomeController>(HomeController());
    Get.put<SearchController>(SearchController());
    Get.put<NotificationsController>(NotificationsController());
    Get.put<ProfileController>(ProfileController());
  }
}
