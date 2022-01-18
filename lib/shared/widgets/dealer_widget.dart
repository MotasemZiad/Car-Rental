import 'package:car_rental/core.dart';
import 'package:flutter/material.dart';

class DealerWidget extends StatelessWidget {
  const DealerWidget(this.dealer, [this.index, Key? key]) : super(key: key);
  final Dealer dealer;
  final int? index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(
        right: 8,
        left: 8,
      ),
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(dealer.image!),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            width: 60,
            height: 60,
          ),
          const SizedBox(height: 16),
          Text(
            dealer.name,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, height: 1),
          ),
          const SizedBox(height: 2),
          Text(
            '${dealer.offers} offers',
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
