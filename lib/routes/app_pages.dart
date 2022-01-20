import '../core.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: Routes.availableCars,
      page: () => const AvailableCarsView(),
      binding: AvailableCarsBinding(),
    ),
    GetPage(
      name: Routes.bookCar,
      page: () => BookCarView(),
      binding: BookCarBinding(),
    ),
  ];
}
