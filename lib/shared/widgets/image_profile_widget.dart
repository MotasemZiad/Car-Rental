import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ImageProfileWidget extends StatelessWidget {
  const ImageProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                backgroundImage: AssetImage('assets/images/users/me_gsg.jpg'),
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
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2.2),
              borderRadius: BorderRadius.circular(12),
              elevation: 0,
              borderSide: const BorderSide(color: Colors.white, width: 2),
              badgeColor: Colors.yellow[600]!,
              badgeContent: const Text(
                'Gold',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 12.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
