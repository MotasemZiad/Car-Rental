import 'package:flutter/material.dart';

import '../../core.dart';

class CarWidget extends StatelessWidget {
  const CarWidget(this.car, [this.index, Key? key]) : super(key: key);
  final Car car;
  final int? index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      width: 220,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(
        right: 8,
        left: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: kPrimaryColorShadow,
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
              child: Text(
                car.condition!,
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 115,
            child: Center(
              child: Hero(
                tag: car.images![0],
                child: Image.asset(
                  car.images![0],
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            car.model,
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 8),
          Text(
            car.brand,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, height: 1),
          ),
          Text(
            'per ' +
                (car.condition == 'Daily'
                    ? 'day'
                    : car.condition == 'Weekly'
                        ? 'week'
                        : 'month'),
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
