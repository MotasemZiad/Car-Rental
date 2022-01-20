import 'package:flutter/material.dart';

import 'widgets/available_cars_grid_view.dart';
import 'widgets/filter_bottom_bar.dart';
import '../../core.dart';

class AvailableCarsView extends StatelessWidget {
  const AvailableCarsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final filter = FilterService().getFilterList();
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              AppBarWidget(
                'Available Cars (' +
                    CarService().getCarsList().length.toString() +
                    ')',
              ),
              const SizedBox(height: 18),
              const AvailableCarsGridView(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FilterBottomBar(filter: filter),
    );
  }
}
