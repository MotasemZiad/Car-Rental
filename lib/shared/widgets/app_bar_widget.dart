import 'package:car_rental/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    this.isBackButton = true,
    this.title,
    this.actions,
    Key? key,
  }) : super(key: key);

  final bool isBackButton;
  final String? title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: isBackButton
          ? null
          : const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                !isBackButton
                    ? Container()
                    : GestureDetector(
                        onTap: () => Get.back(),
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                            border: Border.all(
                              color: Colors.grey[300]!,
                              width: 1,
                            ),
                          ),
                          child: Icon(
                            Icons.keyboard_arrow_left,
                            color: kPrimaryColor,
                            size: 28,
                          ),
                        ),
                      ),
                title == null
                    ? Container()
                    : Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            title!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
          actions == null
              ? Container()
              : Row(
                  children: actions!,
                ),
        ],
      ),
    );
  }
}
