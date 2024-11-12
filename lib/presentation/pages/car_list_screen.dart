import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_car/core/utilities/app_colors.dart';
import 'package:rent_car/presentation/widgets/car_item_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../domain/entities/car_entity.dart';

class CarListScreen extends StatelessWidget {
   CarListScreen({super.key});
  List<CarEntity> list = [
    CarEntity(model: "BWM", distance: 10, fuelCapacity: 10,pricePerHour: 25),
    CarEntity(model: "BWM", distance: 10, fuelCapacity: 10,pricePerHour: 25),
    CarEntity(model: "BWM", distance: 10, fuelCapacity: 10,pricePerHour: 25),
    CarEntity(model: "BWM", distance: 10, fuelCapacity: 10,pricePerHour: 25),
    CarEntity(model: "BWM", distance: 10, fuelCapacity: 10,pricePerHour: 25),
    CarEntity(model: "BWM", distance: 10, fuelCapacity: 10,pricePerHour: 25),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.chooseYourCar),
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.black,
        centerTitle: true,
      ),
      body: ListView.builder(
        physics: const PageScrollPhysics(),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return CarItemCard(car: list[index]);
        },
      ),
    );
  }
}
