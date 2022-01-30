import '/core.dart';
import 'package:get/get.dart';

class SearchController extends GetxController {
  List<Car> cars = [];
  @override
  void onInit() {
    super.onInit();
    cars = CarService().getCarsList();
  }
}
