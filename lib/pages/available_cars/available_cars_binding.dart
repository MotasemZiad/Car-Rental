import 'package:get/get.dart';
import '../../core.dart';

class AvailableCarsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AvailableCarsController>(AvailableCarsController());
  }
}
