import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '/core.dart';

class FilterBottomBar extends StatelessWidget {
  const FilterBottomBar({
    Key? key,
    required this.filter,
  }) : super(key: key);

  final List<Filter> filter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.only(left: 14),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
            child: const Icon(
              LineIcons.filter,
              size: 24,
              color: Colors.white,
            ),
          ),
          ValueBuilder<Filter?>(
            initialValue: filter[0],
            builder: (snapshot, updater) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: filter
                    .map(
                      (e) => GestureDetector(
                        onTap: () => updater(e),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Text(
                            e.name,
                            style: TextStyle(
                              color: snapshot!.name == e.name
                                  ? kPrimaryColor
                                  : Colors.grey,
                              fontSize: 16,
                              fontWeight: snapshot.name == e.name
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
