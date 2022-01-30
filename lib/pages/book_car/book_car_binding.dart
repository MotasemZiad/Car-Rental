import 'package:get/get.dart';

import '/core.dart';

class BookCarBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BookCarController>(BookCarController());
  }
}
