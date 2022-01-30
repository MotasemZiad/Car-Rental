import 'package:car_rental/services/xcore.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  List<String> signinImages = AuthService().getImageService().sublist(0, 2);
}
