import 'package:flutter/material.dart';

import '/core.dart';

class RowAuthWidget extends StatelessWidget {
  const RowAuthWidget({
    Key? key,
    required this.firstLabel,
    required this.secondLabel,
    this.onTap,
  }) : super(key: key);
  final String firstLabel;
  final String secondLabel;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            firstLabel,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(
              secondLabel,
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
