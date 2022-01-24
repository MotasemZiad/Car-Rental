import 'package:car_rental/shared/widgets/row_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core.dart';

class TopDealsWidget extends GetView<HomeController> {
  const TopDealsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RowTextWidget(title: 'TOP DEALS', rightTitle: 'More'),
        SizedBox(
          height: 280,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: controller.cars
                .map((car) => GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.bookCar, arguments: car);
                      },
                      child: CarWidget(
                        car,
                        controller.cars.indexOf(car),
                      ),
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
