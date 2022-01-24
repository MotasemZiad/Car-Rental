import 'package:car_rental/core.dart';
import 'package:car_rental/shared/widgets/row_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecentSearch extends GetView<SearchController> {
  const RecentSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          const RowTextWidget(
            title: 'RECENT SEARCH',
            rightTitle: 'view all',
          ),
          SizedBox(
            height: 280,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: controller.cars
                  .map(
                    (car) => GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.bookCar, arguments: car);
                      },
                      child: CarWidget(
                        car,
                        controller.cars.indexOf(car),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Divider(
              color: Colors.grey[700],
            ),
          )
        ],
      ),
    );
  }
}
