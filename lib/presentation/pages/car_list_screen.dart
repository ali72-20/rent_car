import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rent_car/core/utilities/app_colors.dart';
import 'package:rent_car/presentation/widgets/car_item_card.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../domain/entities/car.dart';

class CarListScreen extends StatelessWidget {
   CarListScreen({super.key});
  List<CarItemCard> list = [
    CarItemCard(car: Car("BMW", 10, 45, 100),),
    CarItemCard(car: Car("BMW", 10, 45, 100),),
    CarItemCard(car: Car("BMW", 10, 45, 100),),
    CarItemCard(car: Car("BMW", 10, 45, 100),),
    CarItemCard(car: Car("BMW", 10, 45, 100),),

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
          return list[index];
        },
      ),
    );
  }
}