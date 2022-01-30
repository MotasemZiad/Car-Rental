import '/core.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.signin;

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
    GetPage(
      name: Routes.signin,
      page: () => const SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: Routes.signup,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: Routes.forgetPassword,
      page: () => const ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
    ),
  ];
}
