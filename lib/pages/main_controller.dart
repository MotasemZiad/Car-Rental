import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  final pageController = PageController();
  final animationDuration = const Duration(milliseconds: 300);

  @override
  void onClose() {
    pageController.dispose();
    Get.delete();
    super.onClose();
  }
}
