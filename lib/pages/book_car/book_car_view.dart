import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core.dart';
import 'widgets/specification_widget.dart';

class BookCarView extends GetView<BookCarController> {
  BookCarView({Key? key}) : super(key: key);
  final car = Get.arguments as Car;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.grey[200],
          child: Column(
            children: [
              _buildHeader(),
              _buildBody(),
              Container(
                height: 90,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '12 Months',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: const [
                            Text(
                              'IDR 4,35jt',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(width: 8),
                            Text(
                              'per month',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Select This Car',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[200]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'SPECIFICATIONS',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.grey[400],
              ),
            ),
          ),
          Container(
            height: 80,
            padding: const EdgeInsets.only(top: 10, left: 16),
            margin: const EdgeInsets.only(bottom: 16),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: const [
                SpecificationWidget(
                  title: 'Color',
                  data: 'White',
                ),
                SpecificationWidget(
                  title: 'Gearbox',
                  data: 'Automatic',
                ),
                SpecificationWidget(
                  title: 'Seat',
                  data: '4',
                ),
                SpecificationWidget(
                  title: 'Motor',
                  data: 'v10 2.0',
                ),
                SpecificationWidget(
                  title: 'Speed (0-100)',
                  data: '3.2 sec',
                ),
                SpecificationWidget(
                  title: 'Top Speed',
                  data: '121 mph',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(
          top: 16,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAppBar(),
            const SizedBox(height: 16),
            CarNameWidget(model: car.model, brand: car.brand),
            const SizedBox(height: 16),
            Expanded(
              child: CarImagesWidget(
                images: car.images!,
                isExpanded: true,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  _buildPricePerPeriod('12', '4.45jt', true),
                  const SizedBox(width: 16),
                  _buildPricePerPeriod('3', '4.8jt'),
                  const SizedBox(width: 16),
                  _buildPricePerPeriod('9', '5.2jt'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPricePerPeriod(String months, String price,
      [bool selected = false]) {
    return Expanded(
      child: Container(
        height: 110,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: selected ? kPrimaryColor : Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.all(
            color: Colors.grey[300]!,
            width: selected ? 0 : 1,
          ),
        ),
        child: Column(
          children: [
            Text(
              '$months Month',
              style: TextStyle(
                color: selected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Text(
              price,
              style: TextStyle(
                color: selected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              'IDR',
              style: TextStyle(
                color: selected ? Colors.white : Colors.black,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBarWidget(
      title: null,
      actions: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: const Icon(
            Icons.bookmark_border,
            color: Colors.white,
            size: 24,
          ),
        ),
        const SizedBox(width: 12),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(color: Colors.grey[300]!, width: 1),
          ),
          child: const Icon(
            Icons.ios_share,
            color: Colors.black,
            size: 24,
          ),
        ),
      ],
    );
  }
}
