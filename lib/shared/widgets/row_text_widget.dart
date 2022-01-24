import 'package:car_rental/core.dart';
import 'package:flutter/material.dart';

class RowTextWidget extends StatelessWidget {
  const RowTextWidget({
    Key? key,
    required this.title,
    required this.rightTitle,
  }) : super(key: key);
  final String title;
  final String rightTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 22,
              color: Colors.grey[400],
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Text(
                rightTitle,
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
          ),
        ],
      ),
    );
  }
}
