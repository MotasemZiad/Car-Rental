import 'package:badges/badges.dart';
import 'package:car_rental/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

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
          _buildCarImages(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCarName(),
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

  Column _buildCarName() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            controller.displayCar!.model,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            controller.displayCar!.brand,
            style: const TextStyle(color: Colors.grey, fontSize: 20),
          ),
        ),
      ],
    );
  }

  ValueBuilder<int?> _buildCarImages() {
    return ValueBuilder<int?>(
      initialValue: 0,
      builder: (currentImage, updater) => Column(
        children: [
          SizedBox(
            height: 150,
            child: PageView(
              physics: const BouncingScrollPhysics(),
              onPageChanged: updater,
              children: controller.displayCar!.images!
                  .map(
                    (e) => Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Image.asset(
                          e,
                          fit: BoxFit.scaleDown,
                        )),
                  )
                  .toList(),
            ),
          ),
          controller.displayCar!.images!.length > 1
              ? Container(
                  margin: const EdgeInsets.only(top: 12),
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: controller.displayCar!.images!
                        .map((e) => _buildIndicator(
                              controller.displayCar!.images!.indexOf(e) ==
                                  currentImage,
                            ))
                        .toList(),
                  ),
                )
              : Container()
        ],
      ),
    );
  }

  Widget _buildIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 6),
      height: 8,
      width: isActive ? 20 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.grey[400],
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  Container _buildScreenHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 90.0,
            child: Stack(
              children: [
                CircularStepProgressIndicator(
                  totalSteps: 100,
                  currentStep: 77,
                  padding: 0.0,
                  selectedStepSize: 4,
                  width: 80,
                  height: 80,
                  startingAngle: 2.3,
                  selectedColor: Colors.yellow[600],
                  unselectedColor: Colors.white,
                  roundedCap: (_, __) => true,
                  child: const Padding(
                    padding: EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      maxRadius: 30.0,
                      backgroundImage:
                          AssetImage('assets/images/users/me_gsg.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 0,
                  child: Badge(
                    shape: BadgeShape.square,
                    animationType: BadgeAnimationType.scale,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 6, vertical: 2.2),
                    borderRadius: BorderRadius.circular(12),
                    elevation: 0,
                    borderSide: const BorderSide(color: Colors.white, width: 2),
                    badgeColor: Colors.yellow[600]!,
                    badgeContent: const Text(
                      'Gold',
                      style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 12.0),
                    ),
                  ),
                )
              ],
            ),
          ),
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
