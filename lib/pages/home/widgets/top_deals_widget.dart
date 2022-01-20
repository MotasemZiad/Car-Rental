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
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'TOP DEALS',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey[400],
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    'More',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: kPrimaryColor,
                    size: 12,
                  ),
                ],
              )
            ],
          ),
        ),
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
