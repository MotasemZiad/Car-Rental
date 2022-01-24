import 'package:car_rental/core.dart';
import 'package:car_rental/shared/widgets/row_text_widget.dart';
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
        const RowTextWidget(title: 'TOP DEALERS', rightTitle: 'More'),
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
