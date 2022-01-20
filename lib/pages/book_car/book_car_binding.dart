import 'package:car_rental/pages/book_car/book_car_controller.dart';
import 'package:get/get.dart';

class BookCarBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BookCarController>(BookCarController());
  }
}
