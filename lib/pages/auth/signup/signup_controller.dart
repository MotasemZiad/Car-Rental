import 'package:get/get.dart';

import '/core.dart';

class SignupController extends GetxController {
  List<String> signupImages = AuthService().getImageService().sublist(2, 5);
}
