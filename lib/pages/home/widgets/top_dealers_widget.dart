import 'package:car_rental/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopDealersWidget extends GetView<HomeController> {
  const TopDealersWidget({
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
                'TOP DEALERS',
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
        Container(
          height: 160,
          margin: const EdgeInsets.only(bottom: 16),
          child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: controller.dealers
                  .map((dealer) => DealerWidget(
                        dealer,
                        controller.dealers.indexOf(dealer),
                      ))
                  .toList()),
        ),
      ],
    );
  }
}
