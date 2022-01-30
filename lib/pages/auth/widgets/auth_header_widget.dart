import 'package:flutter/material.dart';

import '/core.dart';

class AuthHeaderWidget extends StatelessWidget {
  const AuthHeaderWidget({
    Key? key,
    required this.images,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final List<String> images;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CarImagesWidget(images: images),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ColumnNameWidget(
              title: title,
              subtitle: subtitle,
            ),
          ),
        ],
      ),
    );
  }
}
