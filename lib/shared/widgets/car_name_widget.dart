import 'package:flutter/material.dart';

class CarNameWidget extends StatelessWidget {
  const CarNameWidget({
    Key? key,
    required this.model,
    required this.brand,
  }) : super(key: key);

  final String model;
  final String brand;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            model,
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
            brand,
            style: const TextStyle(color: Colors.grey, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
