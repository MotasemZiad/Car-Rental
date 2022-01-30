import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/core.dart';

class AvailableCarsGridView extends StatelessWidget {
  const AvailableCarsGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.count(
      crossAxisCount: 2,
      physics: const BouncingScrollPhysics(),
      childAspectRatio: 1 / 1.6,
      crossAxisSpacing: 2,
      mainAxisSpacing: 14,
      children: CarService()
          .getCarsList()
          .map((car) => GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.bookCar, arguments: car);
                },
                child: CarWidget(car),
              ))
          .toList(),
    ));
  }
}
