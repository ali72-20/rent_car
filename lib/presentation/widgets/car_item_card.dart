import 'package:flutter/cupertino.dart';

import '../../core/utilities/app_images.dart';
import '../../core/utilities/styles.dart';
import '../../domain/entities/car.dart';

class CarItemCard extends StatelessWidget {
  final Car car;
  const CarItemCard({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Image.asset(AppImages.carImage),
           Text(
            car.model??"model",
            style: Styles.style20,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppImages.pump),
                  Text("${car.fuelCapacity!.toStringAsFixed(0)} L")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppImages.gps),
                  Text("${car.distance!.toStringAsFixed(0)} KM")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
