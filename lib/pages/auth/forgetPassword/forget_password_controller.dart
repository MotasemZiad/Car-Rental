import 'package:get/get.dart';

import '/core.dart';

class ForgetPasswordController extends GetxController {
  List<String> forgetPasswordImages =
      AuthService().getImageService().sublist(5);
}
