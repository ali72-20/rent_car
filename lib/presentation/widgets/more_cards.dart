import 'package:flutter/material.dart';
import 'package:rent_car/core/utilities/app_colors.dart';
import 'package:rent_car/core/utilities/styles.dart';
import 'package:rent_car/domain/entities/car_entity.dart';

class MoreCard extends StatelessWidget {
  final CarEntity car;
  const MoreCard({super.key, required this.car});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: AppColors.moreCardColor,
          borderRadius: BorderRadius.circular(18),
          boxShadow: const [
            BoxShadow(
                color: AppColors.black54,
                blurRadius: 8,
                offset: Offset(0,4)
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                car.model!,
                style: Styles.style16.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5,),
              Row(
                children: [
                  const Icon(Icons.directions_car, color: AppColors.white, size: 16,),
                  const SizedBox(width: 5,),
                  Text(
                    '> ${car.distance} km',
                    style:Styles.style14,
                  ),
                  const SizedBox(width: 10,),
                  const Icon(Icons.battery_full, color: AppColors.white, size: 16,),
                  const SizedBox(width: 5,),
                  Text(
                    car.fuelCapacity.toString(),
                    style: Styles.style14,
                  ),
                ],
              )
            ],
          ),
          const Icon(Icons.arrow_forward_ios, color: AppColors.white, size: 24,),
        ],
      ),
    );
  }
}