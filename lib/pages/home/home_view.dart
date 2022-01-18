import 'package:car_rental/pages/home/widgets/available_cars_widget.dart';
import 'package:car_rental/pages/home/widgets/header_widget.dart';
import 'package:flutter/material.dart';

import './widgets/top_deals_widget.dart';
import './widgets/top_dealers_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            color: Colors.grey[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: const [
                HeaderWidget(),
                AvailableCarsWidget(),
                TopDealsWidget(),
                TopDealersWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
