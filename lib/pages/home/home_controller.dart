import 'package:car_rental/core.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<Car> cars = [];
  Car? displayCar;
  List<Dealer> dealers = [];
  @override
  void onInit() {
    super.onInit();
    cars = CarService().getCarsList();
    dealers = DealerService().getDealersList();
    displayCar = cars[5];
  }
}
