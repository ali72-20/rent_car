import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/utilities/app_colors.dart';
import '../../core/utilities/styles.dart';

class DistanceAndFuelMapCardRow extends StatelessWidget {
  const DistanceAndFuelMapCardRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.directions_car,
          color: AppColors.white,
          size: 16,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "> car distance km",
          style: Styles.style14,
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.battery_full,
          color: AppColors.white,
          size: 14,
        ),
        Text(
          "> car fuel capacity L",
          style: Styles.style14,
        ),
      ],
    );
  }
}
