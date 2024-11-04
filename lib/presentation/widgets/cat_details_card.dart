import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_car/core/utilities/app_colors.dart';

import '../../core/utilities/app_images.dart';
import '../../core/utilities/styles.dart';
import '../../domain/entities/car_entity.dart';

class CatDetailsCard extends StatelessWidget {
  final CarEntity car;

  const CatDetailsCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: AppColors.carCard,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: AppColors.black12, blurRadius: 10, spreadRadius: 5)
          ]),
      child: Column(
        children: [
          Image.asset(AppImages.carImage),
          Text(
            car.model ?? "model",
            style: Styles.style20,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppImages.gps),
                  Text("${car.distance!.toStringAsFixed(0)} KM"),
                  Image.asset(AppImages.pump),
                  Text("${car.fuelCapacity!.toStringAsFixed(0)} L")
                ],
              ),
              Text(
                "\$${car.pricePerHour!.toStringAsFixed(2)} /h",
                style: Styles.style16.copyWith(color: AppColors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}
