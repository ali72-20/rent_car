import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/utilities/app_colors.dart';
import '../../core/utilities/app_images.dart';
import '../../core/utilities/styles.dart';

import 'distance_and_fuel_map_card_row.dart';
import 'features_map_card.dart';

class CarMapCard extends StatelessWidget {
  const CarMapCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: double.infinity,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: AppColors.black38, spreadRadius: 0, blurRadius: 10)
              ],
              color: AppColors.black54,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "car model",
                  style: Styles.style24,
                ),
                SizedBox(
                  height: 10,
                ),
                DistanceAndFuelMapCardRow(),
              ],
            ),
          ),
          const FeaturesMapCard(),
          Positioned(
            top: 50,
            right: 30,
            child: Image.asset(AppImages.whiteCar),
          ),
        ],
      ),
    );
  }
}
