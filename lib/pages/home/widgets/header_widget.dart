import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '/../../core.dart';

class HeaderWidget extends GetView<HomeController> {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      child: Column(
        children: [
          _buildScreenHeader(),
          const SizedBox(height: 8.0),
          CarImagesWidget(images: controller.displayCar!.images!),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CarNameWidget(
                  model: controller.displayCar!.model,
                  brand: controller.displayCar!.brand,
                ),
                _buildGarage(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildGarage() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Text(
            'My Garage',
            style: TextStyle(
              fontSize: 16.0,
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 8),
          Icon(
            Icons.arrow_forward,
            size: 22,
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }

  Container _buildScreenHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ImageProfileWidget(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 3.0),
                      child: Text(
                        'IDR',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      '17,7jt',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kPrimaryColor,
                ),
                child: const Icon(Icons.add, color: Colors.white, size: 22),
              ),
            ],
          )
        ],
      ),
    );
  }
}
